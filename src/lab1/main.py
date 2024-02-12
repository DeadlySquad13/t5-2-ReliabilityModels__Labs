import numpy as np
from collections import Counter

Possibilities = list[int]
Matrix = list[Possibilities]
TransitionMatrix = Matrix


# from lab1.keymappings_loop import KeymappingsLoop
# Получаем значение, соответствующее отрезку.
# v - случайная величина. Если нужно сгенерировать распределение по `p`, нужно
# подать runif(1)
# X - величины, соответствующие отрезкам.
# За отрезки отвечает параметр p, хранящий последовательность длин.
def get_value_in_range(
    v: int,
    X: Matrix,
    p: Possibilities
):
    border = 0
    print(v, p)

    for i, p_i in enumerate(p):
        border = border + p_i
        if v < border:
            return(X[i])


def make_step(current_state: int, transition_matrix: TransitionMatrix):
    probabilities_for_current_state = transition_matrix[current_state]

    possible_states = list(range(len(transition_matrix)))

    return get_value_in_range(
        np.random.uniform(),
        possible_states,
        probabilities_for_current_state
    )


def walk(initial_state, times, transition_matrix):
    if times == 0:
        return(initial_state)

    next_state = make_step(initial_state, transition_matrix)
    print(next_state)

    return walk(next_state, times - 1, transition_matrix)


NUMBER_OF_EXPERIMENTS = 1_000


def simulate_walks(
    initial_state: int,
    times_per_walk: int,
    transition_matrix: TransitionMatrix,
    number_of_experiments=NUMBER_OF_EXPERIMENTS,
):
    return [walk(initial_state, times_per_walk, transition_matrix)
            for _ in range(number_of_experiments)]


def visualize_states():
    import matplotlib.pyplot as plt
    import numpy as np

    plt.style.use('_mpl-gallery')

    # make data:
    x = 0.5 + np.arange(8)
    y = [4.8, 5.5, 3.5, 4.6, 6.5, 6.6, 2.6, 3.0]

    # plot
    fig, ax = plt.subplots()

    ax.bar(x, y, width=1, edgecolor="white", linewidth=0.7)

    ax.set(xlim=(0, 8), xticks=np.arange(1, 8),
           ylim=(0, 8), yticks=np.arange(1, 8))

    plt.show()


def main():
    transition_matrix = [
        [0.3, 0.3, 0.4],
        [0.5, 0.3, 0.2],
        [0.7, 0.1, 0.2],
    ]
    initial_state = 0
    results = simulate_walks(initial_state, 2, transition_matrix)
    # print(results)
    print(Counter(results))
    # visualize_states()


if __name__ == '__main__':
    main()

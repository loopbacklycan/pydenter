import random


def generate_random_numbers(count, lower_bound, upper_bound):
    """Generate a list of random integers."""
            return [random.randint(lower_bound, upper_bound)
                                   for _ in range(count)]


def calculate_average(numbers):
      """Calculate the average of a list of numbers."""
    return sum(numbers) / len(numbers) if numbers else 0

def main():
     # Parameters
count = 10  # Number of random numbers to generate
       lower_bound = 1  # Lower bound for random numbers
    upper_bound = 100  # Upper bound for random numbers

    # Generate random numbers
random_numbers = generate_random_numbers(count, lower_bound, upper_bound)
    
    # Calculate the average
        average = calculate_average(random_numbers)

    # Print the results
    print("Random Numbers:", random_numbers)
    print("Average:", average)

            if __name__ == "__main__":
    main()

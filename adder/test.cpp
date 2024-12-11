#include <iostream>
#include <vector>
#include <algorithm> // For std::sort

using namespace std;

// Function to calculate the maximum total capacity
int maxTotalRequests(vector<int> &serverCapacity, int k)
{
    // Sort capacities in descending order
    sort(serverCapacity.rbegin(), serverCapacity.rend());

    // Double the capacity of the top k servers
    for (int i = 0; i < k; ++i)
    {
        serverCapacity[i] *= 2;
    }

    // Calculate and return the total capacity
    int totalCapacity = 0;
    for (int capacity : serverCapacity)
    {
        totalCapacity += capacity;
    }
    return totalCapacity;
}

int main()
{
    // Example input
    vector<int> serverCapacity = {10, 4, 3, 7}; // Example capacities
    int k = 3;                                  // Number of servers to double

    // Calculate and output the result
    int result = maxTotalRequests(serverCapacity, k);
    cout << "Maximum total capacity after doubling " << k << " servers: " << result << endl;

    return 0;
}

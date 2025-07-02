#include <bits/stdc++.h>

int main() {
    std::string s = "maduiersnfotvbyl";
    std::string goal = "flyers";
    for(int i = 0; i < goal.size(); i++) {
        for(int j = 0; j < s.size(); j++) {
            if(goal[i] == s[j]) {
                std::cout << j << " \n"[i == goal.size() - 1];
            }
        }
    }

    std::string constru = "9?~567";
    for(int i = 0; i < 6; i++) {
        std::cout << s[constru[i] & 0xf];
    }
    std::cout << '\n';
    return 0;
}
fn common_part() raises -> (List[Int], List[Int]):
    var left_side: List[Int] = List[Int]()
    var right_side: List[Int] = List[Int]()
    with open('inputs/day1.txt', 'r') as f:
        for line in f.read().splitlines():
            var splited = line[].split()
            left_side.append(atol(splited[0]))
            right_side.append(atol(splited[1]))
    sort(left_side)
    sort(right_side)
    return left_side, right_side

fn part1() raises -> Int:
    var left_side: List[Int]
    var right_side: List[Int]
    left_side,  right_side = common_part()
    var total = 0
    for i in range(len(left_side)):
        total += abs(left_side[i] - right_side[i]) 
    return total

fn part2() raises -> Int:
    var left_side: List[Int]
    var right_side: List[Int]
    left_side,  right_side = common_part()
    var total = 0
    for i in range(len(left_side)):
        total += right_side.count(left_side[i]) * left_side[i]
    return total

fn main() raises:
    print(part1())
    print(part2())
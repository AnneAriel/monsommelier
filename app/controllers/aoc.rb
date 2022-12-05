# begin sum = 0
# sum2 = 0

# Input.day(4).split("\n").each do |pair|
#   range1 =  [*(pair.split(",")[0].split("-")[0]..pair.split(",")[0].split("-")[1])]
#   range2 =  [*(pair.split(",")[1].split("-")[0]..pair.split(",")[1].split("-")[1])]

#  sum += 1 if [range1 + range2].flatten.uniq.length == range1.length || [range1 + range2].flatten.uniq.length == range2.length
#  sum2 += 1 if [range1 + range2].flatten.uniq.length < [range1 + range2].flatten.length
# end
# p sum
# p sum2 =end

result = result2 = 0
​
ranges = [[int(el) for el in l.replace("-", ",").split(",")]
          for l in open("input.txt").readlines()]
​
for n1, n2, n3, n4 in ranges:
    if (n3 >= n1 and n4 <= n2) or (n1 >= n3 and n2 <= n4):
        result += 1
    if not (n1 > n4 or n3 > n2):
        result2 += 1

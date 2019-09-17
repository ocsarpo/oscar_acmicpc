# https://www.acmicpc.net/problem/7568
# 브루트 포스 -> 전체를 다 시도해보는 것... (전수공격)
# 중첩반복하면서 대상(i)이 비교대상(j)보다 작으면 대상의 순위를 1 증가시킴 (전체를 비교.. -> 브루트포스!!!)
people = gets.chomp().to_i
body = []

for i in 0...people
	profile = gets.chomp().split(' ')
	body << {
		weight: profile[0].to_i,
		height: profile[1].to_i,
		rank: 1
	}
end

for i in 0...people
	for j in 0...people
		if body[i][:weight] < body[j][:weight] && body[i][:height] < body[j][:height]
			body[i][:rank] += 1
		end
	end
end

body.each do |b|
	print b[:rank].to_s + " "
end
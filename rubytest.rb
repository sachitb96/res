

puts "Hello Ruby!";

class Demo
	def doAlgorithm(nf, n)

		temps = Array.new(n, 0)
		finals = Array.new(n, 0)

	

		for i in 1..n
			diff = i - nf.at(i-1)
			temps[i-1] = diff
			term1 = 0
			for k in 1..i		
				if temps.at(k-1) < temps.at(i-1)
					term1 += 1
				end
			end
				
			term2 = 0
			for k in 1..i
				if temps.at(k-1) == temps.at(i-1) and k < i
					term2 += 1
				end
				tMin = [0, diff].min 
				if temps.at(k-1) == temps.at(i-1)
					term2 += tMin.abs
				end
			end

			finals[i-1] = term1 + term2 + 1
			puts finals[i-1]
		end
		
	end
end

demo = Demo.new
nf = Array[2,0,5,1,2,3,3,2,6,4]

demo.doAlgorithm(nf, 10)
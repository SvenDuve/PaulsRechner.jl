function Emma()
        println("Willkommen Emma zum Rechentrainer")
        println("============================")
        println("Welche Rechenart möchtest du trainiren?")
        println("a für Addition")
        println("s für Subtraktion")
        println("m für Multiplikation")
        println("d für Divison")
        println("f für Finde den Platzhalter")
        println("r für Division mit Rest")


        v = chomp(readline())
        n = 10
        zeitLimit = 5 * n
        result = zeros(Int, n)
        result2 = zeros(Int, n)
        resultComp = zeros(Int, n)
        #flush(stdin)

        if v=="a"

                print("Addition:\n")
                a = rand(1:500, n)
                b = rand(1:500, n)

                startTime = Dates.Time(now())

                for i in (1:n)
                        print(string(a[i], " + ", b[i], " = "))
                        result[i] = parse(Int, chomp(readline()))
                        resultComp[i] = a[i] + b[i]
                end


        elseif v=="s"
                println("Subtraktion\n")

                a = rand(1:50, n)
                b = rand(1:50, n)

                startTime = Dates.Time(now())

                for i in (1:n)
                        if a[i] > b[i]
                                resultComp[i] = a[i] - b[i]
                                print(string(a[i], " - ", b[i], " = "))

                        else
                                resultComp[i] = b[i] - a[i]
                                print(string(b[i], " - ", a[i], " = "))

                        end

                        result[i] = parse(Int, chomp(readline()))

                end



        elseif v=="m"
                println("Multiplikation\n")
                a = rand(1:10, n)
                b = rand(1:10, n)

                startTime = Dates.Time(now())

                for i in (1:n)
                        print(string(a[i], " * ", b[i], " = "))
                        result[i] = parse(Int, chomp(readline()))
                        resultComp[i] = a[i] * b[i]
                end


        elseif v=="d"
                println("Divison")
                a = rand(1:10, n)
                b = rand(1:10, n)

                startTime = Dates.Time(now())

                for i in (1:n)
                        resultComp[i] = a[i] * b[i]
                        print(string(resultComp[i], " : ", a[i], " = "))
                        result[i] = parse(Int, chomp(readline()))
                end

        elseif v=="f"
                println("Finde den Platzhalter:")
                a = rand(1:10, n)
                b = rand(1:10, n)

                startTime = Dates.Time(now())

                for i in (1:n)
                        resultComp[i] = a[i] * b[i]
                        print(string(a[i], " * x = ", resultComp[i], "\t x = "))
                        result[i] = parse(Int, chomp(readline()))
                end

        elseif v=="r"
                println("Bestimme das Ergebnis der Division mit Rest:")
                a = rand(10:100, n)
                b = rand(1:9, n)
                c = zeros(Int64, n)

                startTime = Dates.Time(now())

                for i in (1:n)
                        c[i] = a[i] % b[i]
                        resultComp[i] = (a[i] - c[i]) / b[i]
                        print(string(a[i], " : ", b[i], " =  ?\t"))
                        result[i] = parse(Int, chomp(readline()))
                        print("Rest?\t")
                        result2[i] = parse(Int, chomp(readline()))
                end


        else
                println("Abbruch!!")
        end

    endTime = Dates.Time(now())
    #timeElapsed = Int64(round(Float64(endTime-startTime)/1000000000))
    timeElapsed = convert(Int64, round(Dates.value(endTime - startTime)/1000000000))


    if timeElapsed < zeitLimit

        zeitAnsage = string("Sehr gut, du warst um $(zeitLimit - timeElapsed) Sekunden schneller als erlaubt!")

    else

        zeitAnsage = string("Schade!! Du warst um $(timeElapsed - zeitLimit) Sekunden zu langsam.")

    end
    


        if v=="a"||v=="s"||v=="m"||v=="t"

                text2 = string("Du hast $(sum(result .== resultComp)) von $n Rechnungaufgaben richtig gelöst!")
                println(text2)


        elseif v=="d"||v=="f"
                text2 = string("Du hast $(sum(result .== b)) von $n Rechnungaufgaben richtig gelöst!")
                #text2 = @sprintf "Du hast %i von %i Rechnungaufgaben richtig gelöst!" sum(result .== resultComp) n;
                println(text2)

        elseif v=="r"

                text2 = string("Du hast $(sum(result .== resultComp)) von $n Quotienten gefunden!")
                text3 = string("Du hast $(sum(result2 .== c)) von $n Resten der Division gefunden!")
                #text2 = @sprintf "Du hast %i von %i Quotienten gefunden!" sum(result .== resultComp) n;
                #text3 = @sprintf "Du hast %i von %i Resten der Division gefunden!" sum(result2 .== c) n;

                println(text2)
                println(text3)

        end

        println(zeitAnsage)

end

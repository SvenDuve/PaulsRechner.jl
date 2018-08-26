function Rechentrainer()

        println("Willkommen zum Rechentrainer")
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
        result = zeros(Int, n)
        result2 = zeros(Int, n)
        resultComp = zeros(Int, n)
        flush(STDIN)

        if v=="a"

                print("Addition:\n")
                a = rand(1:10000, n)
                b = rand(1:10000, n)

                for i in (1:n)
                        text = @sprintf "%i + %i = " a[i] b[i];
                        print(text)
                        result[i] = parse(Int, chomp(readline()))
                        resultComp[i] = a[i] + b[i]
                end


        elseif v=="s"
                println("Subtraktion\n")
                a = rand(1:10000, n)
                b = rand(1:10000, n)

                for i in (1:n)
                        if a[i] > b[i]
                                resultComp[i] = a[i] - b[i]
                                text = @sprintf "%i - %i = " a[i] b[i];
                                print(text)

                        else
                                resultComp[i] = b[i] - a[i]
                                text = @sprintf "%i - %i = " b[i] a[i];
                                print(text)
                        end

                        result[i] = parse(Int, chomp(readline()))

                end



        elseif v=="m"
                println("Multiplikation\n")
                a = rand(1:20, n)
                b = rand(1:20, n)

                for i in (1:n)
                        text = @sprintf "%i * %i = " a[i] b[i];
                        print(text)
                        result[i] = parse(Int, chomp(readline()))
                        resultComp[i] = a[i] * b[i]
                end


        elseif v=="d"
                println("Divison")
                a = rand(1:20, n)
                b = rand(1:20, n)

                for i in (1:n)
                        resultComp[i] = a[i] * b[i]
                        text = @sprintf "%i : %i = " resultComp[i] a[i];
                        print(text)
                        result[i] = parse(Int, chomp(readline()))
                end

        elseif v=="f"
                println("Finde den Platzhalter:")
                a = rand(1:20, n)
                b = rand(1:20, n)

                for i in (1:n)
                        resultComp[i] = a[i] * b[i]
                        text = @sprintf "%i * x = %i\t\tx = " a[i] resultComp[i];
                        print(text)
                        #print("x = ")
                        result[i] = parse(Int, chomp(readline()))
                end

        elseif v=="r"
                println("Bestimme das Ergebnis der Division mit Rest:")
                a = rand(10:1000, n)
                b = rand(1:20, n)
                c = zeros(Int64, n)

                for i in (1:n)
                        c[i] = a[i] % b[i]
                        resultComp[i] = (a[i] - c[i]) / b[i]
                        text = @sprintf "%i : %i = ?\t" a[i] b[i];
                        print(text)
                        result[i] = parse(Int, chomp(readline()))
                        text = @sprintf "Rest?\t";
                        print(text)
                        result2[i] = parse(Int, chomp(readline()))
                end


        else
                println("Abbruch!!")
        end


        if v=="a"||v=="s"||v=="m"

                text2 = @sprintf "Du hast %i von %i Rechnungaufgaben richtig gelöst!" sum(result .== resultComp) n;
                println(text2)
        elseif v=="d"||v=="f"
                text2 = @sprintf "Du hast %i von %i Rechnungaufgaben richtig gelöst!" sum(result .== b) n;
                println(text2)

        elseif v=="r"
                text2 = @sprintf "Du hast %i von %i Quotienten gefunden!" sum(result .== resultComp) n;
                text3 = @sprintf "Du hast %i von %i Resten der Division gefunden!" sum(result2 .== c) n;
                println(text2)
                println(text3)

        end

end

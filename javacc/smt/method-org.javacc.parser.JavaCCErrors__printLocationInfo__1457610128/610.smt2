(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var900 0)
(declare-sort var985 0)
(declare-sort var2243 0)
(declare-sort var2786 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var900-to-var985 (var900) var985)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLine/-282619181 (var985) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getColumn/-1311127119 (var985) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1969040762 (var2243 String) void)
(declare-const null-var900 var900)
(declare-const var2786-err var2243)
(declare-const var490 var900) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var490 null-var900)))
(define-const var2772 Bool false) ; Statement: $z0 = r0 instanceof org.javacc.parser.NormalProduction 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof org.javacc.parser.TokenProduction 
(assert (not (= (ite var2772 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3437 var985 (cast-from-var900-to-var985 var490)) ; Statement: r49 = (org.javacc.parser.NormalProduction) r0 
(define-const var1395 var2243 var2786-err) ; Statement: $r42 = <java.lang.System: java.io.PrintStream err> 
(define-const var3932 String String-init) ; Statement: $r41 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3932)) ; Statement: specialinvoke $r41.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3932!1 String)
(assert (= var3932!1 ""))
(assert true)
(define-const var3758 String (append/672562846 var3932!1 "Line ")) ; Statement: $r43 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Line ") 
(declare-const var3932!2 String)
(assert (= var3932!2 (str.++ var3932!1 "Line ")))
(assert true)
(define-const var1856 Int (getLine/-282619181 var3437)) ; Statement: $i10 = virtualinvoke r49.<org.javacc.parser.NormalProduction: int getLine()>() 
(assert true)
(define-const var1198 String (append/-1001720160 var3758 var1856)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10) 
(declare-const var3758!1 String)
(assert (str.prefixof var3758 var3758!1))
(assert true)
(define-const var176 String (append/672562846 var1198 ", Column ")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Column ") 
(declare-const var1198!1 String)
(assert (= var1198!1 (str.++ var1198 ", Column ")))
(assert true)
(define-const var3719 Int (getColumn/-1311127119 var3437)) ; Statement: $i11 = virtualinvoke r49.<org.javacc.parser.NormalProduction: int getColumn()>() 
(assert true)
(define-const var2566 String (append/-1001720160 var176 var3719)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i11) 
(declare-const var176!1 String)
(assert (str.prefixof var176 var176!1))
(assert true)
(define-const var3414 String (append/672562846 var2566 ": ")) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2566!1 String)
(assert (= var2566!1 (str.++ var2566 ": ")))
(assert true)
(define-const var2324 String (toString/-2075883882 var3414)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1969040762 var1395 var2324)) ; Statement: virtualinvoke $r42.<java.io.PrintStream: void print(java.lang.String)>($r48) 

(declare-const var1395!1 var2243)
(declare-const var2324!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var900-to-var985=([java.lang.Object], org.javacc.parser.NormalProduction), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLine/-282619181=([org.javacc.parser.NormalProduction], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getColumn/-1311127119=([org.javacc.parser.NormalProduction], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1969040762=([java.io.PrintStream, java.lang.String], void)}
; {var900=java.lang.Object, var490=r0, var2772=$z0, var985=org.javacc.parser.NormalProduction, var3437=r49, var2243=java.io.PrintStream, var2786=java.lang.System, var1395=$r42, var3932=$r41, var3758=$r43, var1856=$i10, var1198=$r44, var176=$r45, var3719=$i11, var2566=$r46, var3414=$r47, var2324=$r48}
; {java.lang.Object=var900, r0=var490, $z0=var2772, org.javacc.parser.NormalProduction=var985, r49=var3437, java.io.PrintStream=var2243, java.lang.System=var2786, $r42=var1395, $r41=var3932, $r43=var3758, $i10=var1856, $r44=var1198, $r45=var176, $i11=var3719, $r46=var2566, $r47=var3414, $r48=var2324}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof org.javacc.parser.NormalProduction;	if $z0 == 0 goto $z1 = r0 instanceof org.javacc.parser.TokenProduction;	r49 = (org.javacc.parser.NormalProduction) r0;	$r42 = <java.lang.System: java.io.PrintStream err>;	$r41 = new java.lang.StringBuilder;	specialinvoke $r41.<java.lang.StringBuilder: void <init>()>();	$r43 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Line ");	$i10 = virtualinvoke r49.<org.javacc.parser.NormalProduction: int getLine()>();	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10);	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Column ");	$i11 = virtualinvoke r49.<org.javacc.parser.NormalProduction: int getColumn()>();	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i11);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r42.<java.io.PrintStream: void print(java.lang.String)>($r48);	goto [?= return];	return
;block_num 3
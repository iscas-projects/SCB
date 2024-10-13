(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1332 0)
(declare-sort var950 0)
(declare-sort var1724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var950 String) void)
(declare-const null-String String)
(declare-const var1724-err var950)
(declare-const var2225 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2225 null-String)))
(define-const var2548 var950 var1724-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(define-const var1459 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1459)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1459!1 String)
(assert (= var1459!1 ""))
(assert true)
(define-const var1038 String (append/672562846 var1459!1 "SLF4J: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SLF4J: ") 
(declare-const var1459!2 String)
(assert (= var1459!2 (str.++ var1459!1 "SLF4J: ")))
(assert true)
(define-const var3844 String (append/672562846 var1038 var2225)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1038!1 String)
(assert (= var1038!1 (str.++ var1038 var2225)))
(assert true)
(define-const var2040 String (toString/-2075883882 var3844)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2548 var2040)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var2548!1 var950)
(declare-const var2040!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2225=r2, var1332=null_type, var950=java.io.PrintStream, var1724=java.lang.System, var2548=$r1, var1459=$r0, var1038=$r3, var3844=$r4, var2040=$r5}
; {r2=var2225, null_type=var1332, java.io.PrintStream=var950, java.lang.System=var1724, $r1=var2548, $r0=var1459, $r3=var1038, $r4=var3844, $r5=var2040}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$r1 = <java.lang.System: java.io.PrintStream err>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SLF4J: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	return
;block_num 1
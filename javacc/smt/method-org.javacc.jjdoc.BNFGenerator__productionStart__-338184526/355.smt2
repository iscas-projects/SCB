(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3259 0)
(declare-sort var92 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/-1459746524 (var3259 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLhs/-759107248 (var92) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-32742682 (var3259 String) void)
(declare-const null-var3259 var3259)
(declare-const null-var92 var92)
(declare-const var1267 var3259) ; Statement: r0 := @this: org.javacc.jjdoc.BNFGenerator 
(assert (not (= var1267 null-var3259)))
(declare-const var1204 var92) ; Statement: r2 := @parameter0: org.javacc.parser.NormalProduction 
(assert (not (= var1204 null-var92)))
(assert true)
;(assert (println/-1459746524 var1267 "")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.BNFGenerator: void println(java.lang.String)>("") 

(declare-const var1267!1 var3259)
(declare-const var3778 String)
(define-const var3616 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3616)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3616!1 String)
(assert (= var3616!1 ""))
(assert true)
(define-const var2304 String (getLhs/-759107248 var1204)) ; Statement: $r3 = virtualinvoke r2.<org.javacc.parser.NormalProduction: java.lang.String getLhs()>() 
(assert true)
(define-const var444 String (append/672562846 var3616!1 var2304)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3616!2 String)
(assert (= var3616!2 (str.++ var3616!1 var2304)))
(assert true)
(define-const var2803 String (append/672562846 var444 " ::= ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ::= ") 
(declare-const var444!1 String)
(assert (= var444!1 (str.++ var444 " ::= ")))
(assert true)
(define-const var1109 String (toString/-2075883882 var2803)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-32742682 var1267!1 var1109)) ; Statement: virtualinvoke r0.<org.javacc.jjdoc.BNFGenerator: void print(java.lang.String)>($r6) 

(declare-const var1267!2 var3259)
(declare-const var1109!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/-1459746524=([org.javacc.jjdoc.BNFGenerator, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLhs/-759107248=([org.javacc.parser.NormalProduction], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-32742682=([org.javacc.jjdoc.BNFGenerator, java.lang.String], void)}
; {var3259=org.javacc.jjdoc.BNFGenerator, var1267=r0, var92=org.javacc.parser.NormalProduction, var1204=r2, var3778="", var3616=$r1, var2304=$r3, var444=$r4, var2803=$r5, var1109=$r6}
; {org.javacc.jjdoc.BNFGenerator=var3259, r0=var1267, org.javacc.parser.NormalProduction=var92, r2=var1204, ""=var3778, $r1=var3616, $r3=var2304, $r4=var444, $r5=var2803, $r6=var1109}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjdoc.BNFGenerator;	r2 := @parameter0: org.javacc.parser.NormalProduction;	specialinvoke r0.<org.javacc.jjdoc.BNFGenerator: void println(java.lang.String)>("");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<org.javacc.parser.NormalProduction: java.lang.String getLhs()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ::= ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjdoc.BNFGenerator: void print(java.lang.String)>($r6);	return
;block_num 1
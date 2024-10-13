(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var179 0)
(declare-sort var3825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-32742682 (var179 String) void)
(declare-const null-var179 var179)
(declare-const null-String String)
(declare-const var37 var179) ; Statement: r0 := @this: org.javacc.jjdoc.BNFGenerator 
(assert (not (= var37 null-var179)))
(declare-const var3764 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3764 null-String)))
(define-const var2429 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2429)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2429!1 String)
(assert (= var2429!1 ""))
(assert true)
(define-const var970 String (append/672562846 var2429!1 var3764)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2429!2 String)
(assert (= var2429!2 (str.++ var2429!1 var3764)))
(assert true)
(define-const var914 String (append/672562846 var970 "\n")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var970!1 String)
(assert (= var970!1 (str.++ var970 "\n")))
(assert true)
(define-const var1600 String (toString/-2075883882 var914)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-32742682 var37 var1600)) ; Statement: virtualinvoke r0.<org.javacc.jjdoc.BNFGenerator: void print(java.lang.String)>($r5) 

(declare-const var37!1 var179)
(declare-const var1600!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-32742682=([org.javacc.jjdoc.BNFGenerator, java.lang.String], void)}
; {var179=org.javacc.jjdoc.BNFGenerator, var37=r0, var3764=r2, var3825=null_type, var2429=$r1, var970=$r3, var914=$r4, var1600=$r5}
; {org.javacc.jjdoc.BNFGenerator=var179, r0=var37, r2=var3764, null_type=var3825, $r1=var2429, $r3=var970, $r4=var914, $r5=var1600}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjdoc.BNFGenerator;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjdoc.BNFGenerator: void print(java.lang.String)>($r5);	return
;block_num 1
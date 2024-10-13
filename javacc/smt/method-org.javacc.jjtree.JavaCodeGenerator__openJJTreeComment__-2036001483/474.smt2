(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var318 0)
(declare-sort var1861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var318 String) void)
(declare-const null-var318 var318)
(declare-const null-String String)
(declare-const var1365 var318) ; Statement: r1 := @parameter0: org.javacc.jjtree.IO 
(assert (not (= var1365 null-var318)))
(declare-const var3084 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3084 null-String)))
 ; Statement: if r0 == null goto virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>("/*@bgen(jjtree)*/") 
(assert (not (= var3084 null-String))) ; Negate: Cond: r0 == null  
(define-const var1903 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1903)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1903!1 String)
(assert (= var1903!1 ""))
(assert true)
(define-const var3133 String (append/672562846 var1903!1 "/*@bgen(jjtree) ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ") 
(declare-const var1903!2 String)
(assert (= var1903!2 (str.++ var1903!1 "/*@bgen(jjtree) ")))
(assert true)
(define-const var250 String (append/672562846 var3133 var3084)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3133!1 String)
(assert (= var3133!1 (str.++ var3133 var3084)))
(assert true)
(define-const var3489 String (append/672562846 var250 " */")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */") 
(declare-const var250!1 String)
(assert (= var250!1 (str.++ var250 " */")))
(assert true)
(define-const var2440 String (toString/-2075883882 var3489)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var1365 var2440)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r6) 

(declare-const var1365!1 var318)
(declare-const var2440!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void)}
; {var318=org.javacc.jjtree.IO, var1365=r1, var3084=r0, var1861=null_type, var1903=$r2, var3133=$r3, var250=$r4, var3489=$r5, var2440=$r6}
; {org.javacc.jjtree.IO=var318, r1=var1365, r0=var3084, null_type=var1861, $r2=var1903, $r3=var3133, $r4=var250, $r5=var3489, $r6=var2440}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.javacc.jjtree.IO;	r0 := @parameter1: java.lang.String;	if r0 == null goto virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>("/*@bgen(jjtree)*/");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r6);	goto [?= return];	return
;block_num 3
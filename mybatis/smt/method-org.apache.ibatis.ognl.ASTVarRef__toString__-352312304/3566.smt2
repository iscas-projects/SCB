(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1670496136 (var801) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var801 var801)
(declare-const var3322 var801) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTVarRef 
(assert (not (= var3322 null-var801)))
(define-const var740 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var740)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var740!1 String)
(assert (= var740!1 ""))
(assert true)
(define-const var1034 String (append/672562846 var740!1 "#")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var740!2 String)
(assert (= var740!2 (str.++ var740!1 "#")))
(define-const var2255 String (name/-1670496136 var3322)) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTVarRef: java.lang.String name> 
(assert true)
(define-const var55 String (append/672562846 var1034 var2255)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1034!1 String)
(assert (= var1034!1 (str.++ var1034 var2255)))
(assert true)
(define-const var1880 String (toString/-2075883882 var55)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1670496136=([org.apache.ibatis.ognl.ASTVarRef], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var801=org.apache.ibatis.ognl.ASTVarRef, var3322=r1, var740=$r0, var1034=$r3, var2255=$r2, var55=$r4, var1880=$r5}
; {org.apache.ibatis.ognl.ASTVarRef=var801, r1=var3322, $r0=var740, $r3=var1034, $r2=var2255, $r4=var55, $r5=var1880}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTVarRef;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r2 = r1.<org.apache.ibatis.ognl.ASTVarRef: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
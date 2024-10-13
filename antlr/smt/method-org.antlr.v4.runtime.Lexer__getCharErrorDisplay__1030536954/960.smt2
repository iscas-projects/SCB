(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getErrorDisplay/-662708220 (var3426 Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3426 var3426)
(declare-const null-Int Int)
(declare-const var3615 var3426) ; Statement: r0 := @this: org.antlr.v4.runtime.Lexer 
(assert (not (= var3615 null-var3426)))
(declare-const var1218 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1218 null-Int)))
(assert true)
(define-const var1336 String (getErrorDisplay/-662708220 var3615 var1218)) ; Statement: r1 = virtualinvoke r0.<org.antlr.v4.runtime.Lexer: java.lang.String getErrorDisplay(int)>(i0) 
(define-const var2476 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2476)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2476!1 String)
(assert (= var2476!1 ""))
(assert true)
(define-const var1145 String (append/672562846 var2476!1 "\u0027")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2476!2 String)
(assert (= var2476!2 (str.++ var2476!1 "\u0027")))
(assert true)
(define-const var254 String (append/672562846 var1145 var1336)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1145!1 String)
(assert (= var1145!1 (str.++ var1145 var1336)))
(assert true)
(define-const var3481 String (append/672562846 var254 "\u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var254!1 String)
(assert (= var254!1 (str.++ var254 "\u0027")))
(assert true)
(define-const var2384 String (toString/-2075883882 var3481)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getErrorDisplay/-662708220=([org.antlr.v4.runtime.Lexer, int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3426=org.antlr.v4.runtime.Lexer, var3615=r0, var1218=i0, var1336=r1, var2476=$r2, var1145=$r3, var254=$r4, var3481=$r5, var2384=$r6}
; {org.antlr.v4.runtime.Lexer=var3426, r0=var3615, i0=var1218, r1=var1336, $r2=var2476, $r3=var1145, $r4=var254, $r5=var3481, $r6=var2384}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.Lexer;	i0 := @parameter0: int;	r1 = virtualinvoke r0.<org.antlr.v4.runtime.Lexer: java.lang.String getErrorDisplay(int)>(i0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
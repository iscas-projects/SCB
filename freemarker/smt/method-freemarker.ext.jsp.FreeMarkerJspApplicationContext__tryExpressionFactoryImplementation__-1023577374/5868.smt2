(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2334 0)
(declare-sort var1072 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var1072 var1072)
(declare-const var3835 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3835 null-String)))
(define-const var3739 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3739)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3739!1 String)
(assert (= var3739!1 ""))
(assert true)
(define-const var2602 String (append/672562846 var3739!1 var3835)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3739!2 String)
(assert (= var3739!2 (str.++ var3739!1 var3835)))
(assert true)
(define-const var1805 String (append/672562846 var2602 ".el.ExpressionFactoryImpl")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".el.ExpressionFactoryImpl") 
(declare-const var2602!1 String)
(assert (= var2602!1 (str.++ var2602 ".el.ExpressionFactoryImpl")))
(assert true)
(define-const var448 String (toString/-2075883882 var1805)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var847 var1072) ; Statement: $r32 := @caughtexception 
(assert (not (= var847 null-var1072)))
 ; Statement: goto [?= return null] 
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3835=r1, var2334=null_type, var3739=$r0, var2602=$r2, var1805=$r3, var448=r4, var1072=java.lang.ClassNotFoundException, var847=$r32}
; {r1=var3835, null_type=var2334, $r0=var3739, $r2=var2602, $r3=var1805, r4=var448, java.lang.ClassNotFoundException=var1072, $r32=var847}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".el.ExpressionFactoryImpl");	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r32 := @caughtexception;	goto [?= return null];	return null
;block_num 3
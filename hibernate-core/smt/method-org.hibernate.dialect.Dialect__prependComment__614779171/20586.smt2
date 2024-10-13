(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1047 0)
(declare-sort var2735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1047_escapeComment/1308978237 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1047 var1047)
(declare-const null-String String)
(declare-const var3924 var1047) ; Statement: r9 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var3924 null-var1047)))
(declare-const var3190 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3190 null-String)))
(declare-const var1704 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1704 null-String)))
(define-const var1701 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1701)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1701!1 String)
(assert (= var1701!1 ""))
(assert true)
(define-const var2521 String (append/672562846 var1701!1 "/* ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ") 
(declare-const var1701!2 String)
(assert (= var1701!2 (str.++ var1701!1 "/* ")))
(define-const var115 String (var1047_escapeComment/1308978237 var1704)) ; Statement: $r2 = staticinvoke <org.hibernate.dialect.Dialect: java.lang.String escapeComment(java.lang.String)>(r1) 
(assert true)
(define-const var3447 String (append/672562846 var2521 var115)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2521!1 String)
(assert (= var2521!1 (str.++ var2521 var115)))
(assert true)
(define-const var3824 String (append/672562846 var3447 " */ ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */ ") 
(declare-const var3447!1 String)
(assert (= var3447!1 (str.++ var3447 " */ ")))
(assert true)
(define-const var2458 String (append/672562846 var3824 var3190)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3824!1 String)
(assert (= var3824!1 (str.++ var3824 var3190)))
(assert true)
(define-const var3152 String (toString/-2075883882 var2458)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1047_escapeComment/1308978237=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1047=org.hibernate.dialect.Dialect, var3924=r9, var3190=r5, var2735=null_type, var1704=r1, var1701=$r0, var2521=$r3, var115=$r2, var3447=$r4, var3824=$r6, var2458=$r7, var3152=$r8}
; {org.hibernate.dialect.Dialect=var1047, r9=var3924, r5=var3190, null_type=var2735, r1=var1704, $r0=var1701, $r3=var2521, $r2=var115, $r4=var3447, $r6=var3824, $r7=var2458, $r8=var3152}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.dialect.Dialect;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ");	$r2 = staticinvoke <org.hibernate.dialect.Dialect: java.lang.String escapeComment(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */ ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1
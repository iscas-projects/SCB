(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var573 0)
(declare-sort var313 0)
(declare-sort var2437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLine/1694120831 (var573) Int)
(declare-fun var2437-init () var2437)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/299550060 (var573) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-16738787 (var2437 String String) void)
(declare-const null-var573 var573)
(declare-const null-String String)
(declare-const var2069 var573) ; Statement: r0 := @parameter0: antlr.RecognitionException 
(assert (not (= var2069 null-var573)))
(declare-const var357 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var357 null-String)))
(assert true)
(define-const var1058 Int (getLine/1694120831 var2069)) ; Statement: $i0 = virtualinvoke r0.<antlr.RecognitionException: int getLine()>() 
 ; Statement: if $i0 <= 0 goto $r7 = "" 
(assert (<= var1058 0)) ; Cond: $i0 <= 0 
(define-const var3096 String "") ; Statement: $r7 = "" 
(assert true) ; Non Conditional
(define-const var559 var2437 var2437-init) ; Statement: $r8 = new org.hibernate.hql.internal.ast.QuerySyntaxException 
(define-const var2924 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2924)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2924!1 String)
(assert (= var2924!1 ""))
(assert true)
(define-const var787 String (getMessage/299550060 var2069)) ; Statement: $r10 = virtualinvoke r0.<antlr.RecognitionException: java.lang.String getMessage()>() 
(assert true)
(define-const var3721 String (append/672562846 var2924!1 var787)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2924!2 String)
(assert (= var2924!2 (str.++ var2924!1 var787)))
(assert true)
(define-const var3556 String (append/672562846 var3721 var3096)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3721!1 String)
(assert (= var3721!1 (str.++ var3721 var3096)))
(assert true)
(define-const var3206 String (toString/-2075883882 var3556)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-16738787 var559 var3206 var357)) ; Statement: specialinvoke $r8.<org.hibernate.hql.internal.ast.QuerySyntaxException: void <init>(java.lang.String,java.lang.String)>($r13, r1) 

(declare-const var559!1 var2437)
(declare-const var3206!1 String)
(declare-const var357!1 String)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getLine/1694120831=([antlr.RecognitionException], int), var2437-init=([], org.hibernate.hql.internal.ast.QuerySyntaxException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/299550060=([antlr.RecognitionException], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-16738787=([org.hibernate.hql.internal.ast.QuerySyntaxException, java.lang.String, java.lang.String], void)}
; {var573=antlr.RecognitionException, var2069=r0, var357=r1, var313=null_type, var1058=$i0, var3096=$r7, var2437=org.hibernate.hql.internal.ast.QuerySyntaxException, var559=$r8, var2924=$r9, var787=$r10, var3721=$r11, var3556=$r12, var3206=$r13}
; {antlr.RecognitionException=var573, r0=var2069, r1=var357, null_type=var313, $i0=var1058, $r7=var3096, org.hibernate.hql.internal.ast.QuerySyntaxException=var2437, $r8=var559, $r9=var2924, $r10=var787, $r11=var3721, $r12=var3556, $r13=var3206}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: antlr.RecognitionException;	r1 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<antlr.RecognitionException: int getLine()>();	if $i0 <= 0 goto $r7 = "";	$r7 = "";	$r8 = new org.hibernate.hql.internal.ast.QuerySyntaxException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke r0.<antlr.RecognitionException: java.lang.String getMessage()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.hibernate.hql.internal.ast.QuerySyntaxException: void <init>(java.lang.String,java.lang.String)>($r13, r1);	return $r8
;block_num 3
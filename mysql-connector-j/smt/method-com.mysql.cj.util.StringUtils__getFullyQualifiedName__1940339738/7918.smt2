(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var225 0)
(declare-sort var3546 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var3546_quoteIdentifier/691504651 (String String Bool) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3901 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3901 null-String)))
(declare-const var3584 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3584 null-String)))
(declare-const var2542 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2542 null-String)))
(declare-const var747 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var747 null-Bool)))
(define-const var1062 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
 ; Statement: if r1 != null goto $r7 = r1 
(assert (not (= var3901 null-String))) ; Cond: r1 != null 
(define-const var3148 String var3901) ; Statement: $r7 = r1 
(assert true) ; Non Conditional
(define-const var2402 String (var3546_quoteIdentifier/691504651 var3148 var2542 var747)) ; Statement: $r3 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,java.lang.String,boolean)>($r7, r2, z0) 
(assert true)
;(assert (<init>/-1061048412 var1062 var2402)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var1062!1 String)
(assert (= var1062!1 var2402))
(assert true)
;(assert (append/-1166366385 var1062!1 46)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1062!2 String)
(assert (str.prefixof var1062!1 var1062!2))
(define-const var2566 String (var3546_quoteIdentifier/691504651 var3584 var2542 var747)) ; Statement: $r5 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,java.lang.String,boolean)>(r4, r2, z0) 
(assert true)
;(assert (append/672562846 var1062!2 var2566)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1062!3 String)
(assert (= var1062!3 (str.++ var1062!2 var2566)))
(assert true)
(define-const var955 String (toString/-2075883882 var1062!3)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), var3546_quoteIdentifier/691504651=([java.lang.String, java.lang.String, boolean], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3901=r1, var225=null_type, var3584=r4, var2542=r2, var747=z0, var1062=$r0, var3148=$r7, var3546=com.mysql.cj.util.StringUtils, var2402=$r3, var2566=$r5, var955=$r6}
; {r1=var3901, null_type=var225, r4=var3584, r2=var2542, z0=var747, $r0=var1062, $r7=var3148, com.mysql.cj.util.StringUtils=var3546, $r3=var2402, $r5=var2566, $r6=var955}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	$r0 = new java.lang.StringBuilder;	if r1 != null goto $r7 = r1;	$r7 = r1;	$r3 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,java.lang.String,boolean)>($r7, r2, z0);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r5 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,java.lang.String,boolean)>(r4, r2, z0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3
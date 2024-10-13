(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1211 0)
(declare-sort var2444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var2444 var2444)
(declare-const var3652 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3652 null-String)))
(declare-const var2882 var2444) ; Statement: r2 := @parameter1: java.util.Properties 
(assert (not (= var2882 null-var2444)))
(define-const var3700 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3700 var3652)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1) 
(declare-const var3700!1 String)
(assert (= var3700!1 var3652))
(assert true)
;(assert (append/672562846 var3700!1 "\u00a7")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u00a7") 
(declare-const var3700!2 String)
(assert (= var3700!2 (str.++ var3700!1 "\u00a7")))
 ; Statement: if r2 != null goto $r3 = virtualinvoke r2.<java.util.Properties: java.util.Set stringPropertyNames()>() 
(assert (not (not (= var2882 null-var2444)))) ; Negate: Cond: r2 != null  
(define-const var3518 String null-String) ; Statement: $r10 = null 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3700!2 var3518)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3700!3 String)
(assert (= var3700!3 (str.++ var3700!2 var3518)))
(assert true)
(define-const var1122 String (toString/-2075883882 var3700!3)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3652=r1, var1211=null_type, var2444=java.util.Properties, var2882=r2, var3700=$r0, var3518=$r10, var1122=$r9}
; {r1=var3652, null_type=var1211, java.util.Properties=var2444, r2=var2882, $r0=var3700, $r10=var3518, $r9=var1122}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.util.Properties;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u00a7");	if r2 != null goto $r3 = virtualinvoke r2.<java.util.Properties: java.util.Set stringPropertyNames()>();	$r10 = null;	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3880 0)
(declare-sort var1668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var1668_quoteIdentifier/691504651 (String String Bool) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2100 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2100 null-String)))
(declare-const var2922 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2922 null-String)))
(declare-const var464 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var464 null-String)))
(declare-const var2700 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var2700 null-Bool)))
(define-const var1436 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
 ; Statement: if r1 != null goto $r7 = r1 
(assert (not (not (= var2100 null-String)))) ; Negate: Cond: r1 != null  
(define-const var862 String "") ; Statement: $r7 = "" 
 ; Statement: goto [?= $r3 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,java.lang.String,boolean)>($r7, r2, z0)] 
(assert true) ; Non Conditional
(define-const var2732 String (var1668_quoteIdentifier/691504651 var862 var464 var2700)) ; Statement: $r3 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,java.lang.String,boolean)>($r7, r2, z0) 
(assert true)
;(assert (<init>/-1061048412 var1436 var2732)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var1436!1 String)
(assert (= var1436!1 var2732))
(assert true)
;(assert (append/-1166366385 var1436!1 46)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1436!2 String)
(assert (str.prefixof var1436!1 var1436!2))
(define-const var2634 String (var1668_quoteIdentifier/691504651 var2922 var464 var2700)) ; Statement: $r5 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,java.lang.String,boolean)>(r4, r2, z0) 
(assert true)
;(assert (append/672562846 var1436!2 var2634)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1436!3 String)
(assert (= var1436!3 (str.++ var1436!2 var2634)))
(assert true)
(define-const var2729 String (toString/-2075883882 var1436!3)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), var1668_quoteIdentifier/691504651=([java.lang.String, java.lang.String, boolean], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2100=r1, var3880=null_type, var2922=r4, var464=r2, var2700=z0, var1436=$r0, var862=$r7, var1668=com.mysql.cj.util.StringUtils, var2732=$r3, var2634=$r5, var2729=$r6}
; {r1=var2100, null_type=var3880, r4=var2922, r2=var464, z0=var2700, $r0=var1436, $r7=var862, com.mysql.cj.util.StringUtils=var1668, $r3=var2732, $r5=var2634, $r6=var2729}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	$r0 = new java.lang.StringBuilder;	if r1 != null goto $r7 = r1;	$r7 = "";	goto [?= $r3 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,java.lang.String,boolean)>($r7, r2, z0)];	$r3 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,java.lang.String,boolean)>($r7, r2, z0);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r5 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,java.lang.String,boolean)>(r4, r2, z0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1339 0)
(declare-sort var116 0)
(declare-sort var1935 0)
(declare-sort var1638 0)
(declare-sort var2443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1935_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1112415476 (var1638) String)
(declare-fun cast-from-var116-to-var1638 (var116) var1638)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-824790054 (var2443 String var1638) void)
(declare-fun cast-from-var1339-to-var2443 (var1339) var2443)
(declare-const null-var1339 var1339)
(declare-const null-var116 var116)
(declare-const var2616 var1339) ; Statement: r0 := @this: com.mysql.cj.exceptions.AssertionFailedException 
(assert (not (= var2616 null-var1339)))
(declare-const var712 var116) ; Statement: r3 := @parameter0: java.lang.Exception 
(assert (not (= var712 null-var116)))
(define-const var3383 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3383)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3383!1 String)
(assert (= var3383!1 ""))
(define-const var3487 String (var1935_getString/-1547297038 "AssertionFailedException.0")) ; Statement: $r2 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("AssertionFailedException.0") 
(assert true)
(define-const var1123 String (append/672562846 var3383!1 var3487)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3383!2 String)
(assert (= var3383!2 (str.++ var3383!1 var3487)))
(assert true)
(define-const var1091 String (toString/-1112415476 (cast-from-var116-to-var1638 var712))) ; Statement: $r4 = virtualinvoke r3.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var2495 String (append/672562846 var1123 var1091)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1123!1 String)
(assert (= var1123!1 (str.++ var1123 var1091)))
(define-const var1469 String (var1935_getString/-1547297038 "AssertionFailedException.1")) ; Statement: $r6 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("AssertionFailedException.1") 
(assert true)
(define-const var1673 String (append/672562846 var2495 var1469)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2495!1 String)
(assert (= var2495!1 (str.++ var2495 var1469)))
(assert true)
(define-const var1713 String (toString/-2075883882 var1673)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-824790054 (cast-from-var1339-to-var2443 var2616) var1713 (cast-from-var116-to-var1638 var712))) ; Statement: specialinvoke r0.<com.mysql.cj.exceptions.CJException: void <init>(java.lang.String,java.lang.Throwable)>($r9, r3) 

(declare-const var2616!1 var1339)
(declare-const var1713!1 String)
(declare-const var712!1 var116)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1935_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var116-to-var1638=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-824790054=([com.mysql.cj.exceptions.CJException, java.lang.String, java.lang.Throwable], void), cast-from-var1339-to-var2443=([com.mysql.cj.exceptions.AssertionFailedException], com.mysql.cj.exceptions.CJException)}
; {var1339=com.mysql.cj.exceptions.AssertionFailedException, var2616=r0, var116=java.lang.Exception, var712=r3, var3383=$r1, var1935=com.mysql.cj.Messages, var3487=$r2, var1123=$r5, var1638=java.lang.Throwable, var1091=$r4, var2495=$r7, var1469=$r6, var1673=$r8, var1713=$r9, var2443=com.mysql.cj.exceptions.CJException}
; {com.mysql.cj.exceptions.AssertionFailedException=var1339, r0=var2616, java.lang.Exception=var116, r3=var712, $r1=var3383, com.mysql.cj.Messages=var1935, $r2=var3487, $r5=var1123, java.lang.Throwable=var1638, $r4=var1091, $r7=var2495, $r6=var1469, $r8=var1673, $r9=var1713, com.mysql.cj.exceptions.CJException=var2443}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.exceptions.AssertionFailedException;	r3 := @parameter0: java.lang.Exception;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("AssertionFailedException.0");	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke r3.<java.lang.Exception: java.lang.String toString()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("AssertionFailedException.1");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.mysql.cj.exceptions.CJException: void <init>(java.lang.String,java.lang.Throwable)>($r9, r3);	return
;block_num 1
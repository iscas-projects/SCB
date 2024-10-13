(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun text/230069816 (var2947) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2947 var2947)
(declare-const null-Bool Bool)
(declare-const var170 var2947) ; Statement: r1 := @this: freemarker.core.Comment 
(assert (not (= var170 null-var2947)))
(declare-const var3207 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3207 null-Bool)))
 ; Statement: if z0 == 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (= (ite var3207 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3535 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3535)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3535!1 String)
(assert (= var3535!1 ""))
(assert true)
(define-const var2117 String (append/672562846 var3535!1 "<#--")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<#--") 
(declare-const var3535!2 String)
(assert (= var3535!2 (str.++ var3535!1 "<#--")))
(define-const var3436 String (text/230069816 var170)) ; Statement: $r9 = r1.<freemarker.core.Comment: java.lang.String text> 
(assert true)
(define-const var2531 String (append/672562846 var2117 var3436)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2117!1 String)
(assert (= var2117!1 (str.++ var2117 var3436)))
(assert true)
(define-const var2248 String (append/672562846 var2531 "-->")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-->") 
(declare-const var2531!1 String)
(assert (= var2531!1 (str.++ var2531 "-->")))
(assert true)
(define-const var3746 String (toString/-2075883882 var2248)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), text/230069816=([freemarker.core.Comment], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2947=freemarker.core.Comment, var170=r1, var3207=z0, var3535=$r8, var2117=$r10, var3436=$r9, var2531=$r11, var2248=$r12, var3746=$r13}
; {freemarker.core.Comment=var2947, r1=var170, z0=var3207, $r8=var3535, $r10=var2117, $r9=var3436, $r11=var2531, $r12=var2248, $r13=var3746}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.Comment;	z0 := @parameter0: boolean;	if z0 == 0 goto $r0 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<#--");	$r9 = r1.<freemarker.core.Comment: java.lang.String text>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-->");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2
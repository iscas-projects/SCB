(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var549 0)
(declare-sort var2503 0)
(declare-sort var1766 0)
(declare-sort var3040 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun self/1626411899 (var3040) var1766)
(declare-fun cast-from-var549-to-var3040 (var549) var3040)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-411037229 (var3040) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var549 var549)
(declare-const null-String String)
(declare-const null-var1766 var1766)
(declare-const var2961 var549) ; Statement: r1 := @this: org.stringtemplate.v4.misc.STRuntimeMessage 
(assert (not (= var2961 null-var549)))
(define-const var15 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var15)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var15!1 String)
(assert (= var15!1 ""))
(define-const var2985 String null-String) ; Statement: r16 = null 
(define-const var2623 var1766 (self/1626411899 (cast-from-var549-to-var3040 var2961))) ; Statement: $r2 = r1.<org.stringtemplate.v4.misc.STRuntimeMessage: org.stringtemplate.v4.ST self> 
 ; Statement: if $r2 == null goto (branch) 
(assert (= var2623 null-var1766)) ; Cond: $r2 == null 
 ; Statement: if r16 == null goto $r3 = new java.lang.StringBuilder 
(assert (= var2985 null-String)) ; Cond: r16 == null 
(define-const var2054 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2054)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2054!1 String)
(assert (= var2054!1 ""))
(assert true)
(define-const var1590 String (append/672562846 var2054!1 " ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2054!2 String)
(assert (= var2054!2 (str.++ var2054!1 " ")))
(assert true)
(define-const var1788 String (toString/-411037229 (cast-from-var549-to-var3040 var2961))) ; Statement: $r4 = specialinvoke r1.<org.stringtemplate.v4.misc.STMessage: java.lang.String toString()>() 
(assert true)
(define-const var2021 String (append/672562846 var1590 var1788)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1590!1 String)
(assert (= var1590!1 (str.++ var1590 var1788)))
(assert true)
(define-const var1810 String (toString/-2075883882 var2021)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var15!1 var1810)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var15!2 String)
(assert (= var15!2 (str.++ var15!1 var1810)))
(assert true)
(define-const var3253 String (toString/-2075883882 var15!2)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), self/1626411899=([org.stringtemplate.v4.misc.STMessage], org.stringtemplate.v4.ST), cast-from-var549-to-var3040=([org.stringtemplate.v4.misc.STRuntimeMessage], org.stringtemplate.v4.misc.STMessage), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-411037229=([org.stringtemplate.v4.misc.STMessage], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var549=org.stringtemplate.v4.misc.STRuntimeMessage, var2961=r1, var15=$r0, var2503=null_type, var2985=r16, var1766=org.stringtemplate.v4.ST, var3040=org.stringtemplate.v4.misc.STMessage, var2623=$r2, var2054=$r3, var1590=$r5, var1788=$r4, var2021=$r6, var1810=$r7, var3253=$r8}
; {org.stringtemplate.v4.misc.STRuntimeMessage=var549, r1=var2961, $r0=var15, null_type=var2503, r16=var2985, org.stringtemplate.v4.ST=var1766, org.stringtemplate.v4.misc.STMessage=var3040, $r2=var2623, $r3=var2054, $r5=var1590, $r4=var1788, $r6=var2021, $r7=var1810, $r8=var3253}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.stringtemplate.v4.misc.STMessage: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: org.stringtemplate.v4.misc.STRuntimeMessage;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r16 = null;	$r2 = r1.<org.stringtemplate.v4.misc.STRuntimeMessage: org.stringtemplate.v4.ST self>;	if $r2 == null goto (branch);	if r16 == null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r4 = specialinvoke r1.<org.stringtemplate.v4.misc.STMessage: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3
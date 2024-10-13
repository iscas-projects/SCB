(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1841 0)
(declare-sort var3580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLogName/-1622746903 (var1841) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFields/437454704 (var1841) var3580)
(declare-fun var3580_isEmpty/-153543822 (var3580) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1841 var1841)
(declare-const var194 var1841) ; Statement: r1 := @this: jdk.jfr.internal.Type 
(assert (not (= var194 null-var1841)))
(define-const var1170 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1170)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1170!1 String)
(assert (= var1170!1 ""))
(assert true)
(define-const var3262 String (getLogName/-1622746903 var194)) ; Statement: $r2 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getLogName()>() 
(assert true)
;(assert (append/672562846 var1170!1 var3262)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1170!2 String)
(assert (= var1170!2 (str.++ var1170!1 var3262)))
(assert true)
(define-const var2271 var3580 (getFields/437454704 var194)) ; Statement: $r3 = virtualinvoke r1.<jdk.jfr.internal.Type: java.util.List getFields()>() 
(define-const var3428 Bool (var3580_isEmpty/-153543822 var2271)) ; Statement: $z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var3428 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1640 String (toString/-2075883882 var1170!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLogName/-1622746903=([jdk.jfr.internal.Type], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFields/437454704=([jdk.jfr.internal.Type], java.util.List), var3580_isEmpty/-153543822=([java.util.List], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1841=jdk.jfr.internal.Type, var194=r1, var1170=$r0, var3262=$r2, var3580=java.util.List, var2271=$r3, var3428=$z0, var1640=$r4}
; {jdk.jfr.internal.Type=var1841, r1=var194, $r0=var1170, $r2=var3262, java.util.List=var3580, $r3=var2271, $z0=var3428, $r4=var1640}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.Type;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getLogName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = virtualinvoke r1.<jdk.jfr.internal.Type: java.util.List getFields()>();	$z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>();	if $z0 != 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2
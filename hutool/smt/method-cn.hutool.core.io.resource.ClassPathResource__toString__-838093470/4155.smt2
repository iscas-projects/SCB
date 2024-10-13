(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var119 0)
(declare-sort var524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun path/1962215242 (var119) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var119 var119)
(declare-const null-String String)
(declare-const var3514 var119) ; Statement: r0 := @this: cn.hutool.core.io.resource.ClassPathResource 
(assert (not (= var3514 null-var119)))
(define-const var1947 String (path/1962215242 var3514)) ; Statement: $r1 = r0.<cn.hutool.core.io.resource.ClassPathResource: java.lang.String path> 
 ; Statement: if null != $r1 goto $r2 = new java.lang.StringBuilder 
(assert (not (= null-String var1947))) ; Cond: null != $r1 
(define-const var2037 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2037)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2037!1 String)
(assert (= var2037!1 ""))
(assert true)
(define-const var894 String (append/672562846 var2037!1 "classpath:")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("classpath:") 
(declare-const var2037!2 String)
(assert (= var2037!2 (str.++ var2037!1 "classpath:")))
(define-const var3279 String (path/1962215242 var3514)) ; Statement: $r3 = r0.<cn.hutool.core.io.resource.ClassPathResource: java.lang.String path> 
(assert true)
(define-const var2882 String (append/672562846 var894 var3279)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var894!1 String)
(assert (= var894!1 (str.++ var894 var3279)))
(assert true)
(define-const var1326 String (toString/-2075883882 var2882)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {path/1962215242=([cn.hutool.core.io.resource.ClassPathResource], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var119=cn.hutool.core.io.resource.ClassPathResource, var3514=r0, var1947=$r1, var524=null_type, var2037=$r2, var894=$r4, var3279=$r3, var2882=$r5, var1326=$r6}
; {cn.hutool.core.io.resource.ClassPathResource=var119, r0=var3514, $r1=var1947, null_type=var524, $r2=var2037, $r4=var894, $r3=var3279, $r5=var2882, $r6=var1326}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.io.resource.ClassPathResource;	$r1 = r0.<cn.hutool.core.io.resource.ClassPathResource: java.lang.String path>;	if null != $r1 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("classpath:");	$r3 = r0.<cn.hutool.core.io.resource.ClassPathResource: java.lang.String path>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3
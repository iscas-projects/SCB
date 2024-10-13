(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2304 0)
(declare-sort var2110 0)
(declare-sort var3651 0)
(declare-sort var1298 0)
(declare-sort var214 0)
(declare-sort var346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun imports/787585255 (var2304) var2110)
(declare-fun var2110_size/-959786421 (var2110) Int)
(declare-fun templates/787585255 (var2304) var3651)
(declare-fun var3651_keySet/-712633290 (var3651) var1298)
(declare-fun var1298_iterator/1911472585 (var1298) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var214)
(declare-fun cast-from-var214-to-String (var214) String)
(declare-fun rawGetTemplate/1385612115 (var2304 String) var346)
(declare-fun isAnonSubtemplate/1377009226 (var346) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2304 var2304)
(declare-const var2374 var2304) ; Statement: r1 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var2374 null-var2304)))
(define-const var1035 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1035)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1035!1 String)
(assert (= var1035!1 ""))
(define-const var597 var2110 (imports/787585255 var2374)) ; Statement: $r2 = r1.<org.stringtemplate.v4.STGroup: java.util.List imports> 
(define-const var3037 Int (var2110_size/-959786421 var597)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
 ; Statement: if $i0 == 0 goto $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map templates> 
(assert (= var3037 0)) ; Cond: $i0 == 0 
(define-const var2990 var3651 (templates/787585255 var2374)) ; Statement: $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map templates> 
(define-const var296 var1298 (var3651_keySet/-712633290 var2990)) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set keySet()>() 
(define-const var1856 Iterator (var1298_iterator/1911472585 var296)) ; Statement: $r35 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3887 Bool (Iterator_hasNext/-1669924200 var1856)) ; Statement: $z1 = interfaceinvoke $r35.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var3887 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2130 var214 (Iterator_next/-1124697587 var1856)) ; Statement: $r6 = interfaceinvoke $r35.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1856!1 Iterator)
(define-const var3655 String (cast-from-var214-to-String var2130)) ; Statement: r36 = (java.lang.String) $r6 
(assert true)
(define-const var2093 var346 (rawGetTemplate/1385612115 var2374 var3655)) ; Statement: r7 = virtualinvoke r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>(r36) 
(define-const var3192 Bool (isAnonSubtemplate/1377009226 var2093)) ; Statement: $z0 = r7.<org.stringtemplate.v4.compiler.CompiledST: boolean isAnonSubtemplate> 
 ; Statement: if $z0 != 0 goto $z1 = interfaceinvoke $r35.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var3192 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3887!1 Bool (Iterator_hasNext/-1669924200 var1856!1)) ; Statement: $z1 = interfaceinvoke $r35.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3887!1 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var314 String (toString/-2075883882 var1035!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), imports/787585255=([org.stringtemplate.v4.STGroup], java.util.List), var2110_size/-959786421=([java.util.List], int), templates/787585255=([org.stringtemplate.v4.STGroup], java.util.Map), var3651_keySet/-712633290=([java.util.Map], java.util.Set), var1298_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var214-to-String=([java.lang.Object], java.lang.String), rawGetTemplate/1385612115=([org.stringtemplate.v4.STGroup, java.lang.String], org.stringtemplate.v4.compiler.CompiledST), isAnonSubtemplate/1377009226=([org.stringtemplate.v4.compiler.CompiledST], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2304=org.stringtemplate.v4.STGroup, var2374=r1, var1035=$r0, var2110=java.util.List, var597=$r2, var3037=$i0, var3651=java.util.Map, var2990=$r3, var1298=java.util.Set, var296=$r4, var1856=$r35, var3887=$z1, var214=java.lang.Object, var2130=$r6, var3655=r36, var346=org.stringtemplate.v4.compiler.CompiledST, var2093=r7, var3192=$z0, var314=$r5}
; {org.stringtemplate.v4.STGroup=var2304, r1=var2374, $r0=var1035, java.util.List=var2110, $r2=var597, $i0=var3037, java.util.Map=var3651, $r3=var2990, java.util.Set=var1298, $r4=var296, $r35=var1856, $z1=var3887, java.lang.Object=var214, $r6=var2130, r36=var3655, org.stringtemplate.v4.compiler.CompiledST=var346, r7=var2093, $z0=var3192, $r5=var314}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.STGroup;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.stringtemplate.v4.STGroup: java.util.List imports>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if $i0 == 0 goto $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map templates>;	$r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map templates>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set keySet()>();	$r35 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r35.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = interfaceinvoke $r35.<java.util.Iterator: java.lang.Object next()>();	r36 = (java.lang.String) $r6;	r7 = virtualinvoke r1.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>(r36);	$z0 = r7.<org.stringtemplate.v4.compiler.CompiledST: boolean isAnonSubtemplate>;	if $z0 != 0 goto $z1 = interfaceinvoke $r35.<java.util.Iterator: boolean hasNext()>();	$z1 = interfaceinvoke $r35.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 6
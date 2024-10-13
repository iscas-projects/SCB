(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3672 0)
(declare-sort var3408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3672 var3672)
(declare-const null-String String)
(declare-const var197 var3672) ; Statement: r6 := @this: freemarker.cache.TemplateNameFormat$Default020400 
(assert (not (= var197 null-var3672)))
(declare-const var1587 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var1587 null-String)))
(assert true) ; Non Conditional
(assert true)
(define-const var643 Int (indexOf/-1209756239 var1587 "*/*")) ; Statement: $i3 = virtualinvoke r7.<java.lang.String: int indexOf(java.lang.String)>("*/*") 
(define-const var858 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if $i3 != $i11 goto r0 = r7 
(assert (not (not (= var643 var858)))) ; Negate: Cond: $i3 != $i11  
 ; Statement: goto [?= $z0 = virtualinvoke r7.<java.lang.String: boolean startsWith(java.lang.String)>("*")] 
(assert true) ; Non Conditional
(assert true)
(define-const var1618 Bool (startsWith/-1785782452 var1587 "*")) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean startsWith(java.lang.String)>("*") 
 ; Statement: if $z0 == 0 goto return r7 
(assert (= (ite var1618 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3672=freemarker.cache.TemplateNameFormat$Default020400, var197=r6, var1587=r7, var3408=null_type, var643=$i3, var858=$i11, var1618=$z0}
; {freemarker.cache.TemplateNameFormat$Default020400=var3672, r6=var197, r7=var1587, null_type=var3408, $i3=var643, $i11=var858, $z0=var1618}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r6 := @this: freemarker.cache.TemplateNameFormat$Default020400;	r7 := @parameter0: java.lang.String;	$i3 = virtualinvoke r7.<java.lang.String: int indexOf(java.lang.String)>("*/*");	$i11 = (int) -1;	if $i3 != $i11 goto r0 = r7;	goto [?= $z0 = virtualinvoke r7.<java.lang.String: boolean startsWith(java.lang.String)>("*")];	$z0 = virtualinvoke r7.<java.lang.String: boolean startsWith(java.lang.String)>("*");	if $z0 == 0 goto return r7;	return r7
;block_num 5
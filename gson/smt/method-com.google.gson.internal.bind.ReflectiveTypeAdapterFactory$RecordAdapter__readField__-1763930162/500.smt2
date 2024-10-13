(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3921 0)
(declare-sort var813 0)
(declare-sort var3794 0)
(declare-sort var2934 0)
(declare-sort var727 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun componentIndices/-339183035 (var3921) var727)
(declare-fun fieldName/-2124946699 (var2934) String)
(declare-fun var727_get/1088891777 (var727 var813) var813)
(declare-fun cast-from-String-to-var813 (String) var813)
(declare-fun cast-from-var813-to-Int (var813) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun readIntoArray/1014833159 (var2934 var3794 Int (Array Int var813)) void)
(declare-const null-var3921 var3921)
(declare-const null-__Array__Int__var813__ (Array Int var813))
(declare-const null-var3794 var3794)
(declare-const null-var2934 var2934)
(declare-const null-Int Int)
(declare-const var3510 var3921) ; Statement: r0 := @this: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter 
(assert (not (= var3510 null-var3921)))
(declare-const var2211 (Array Int var813)) ; Statement: r7 := @parameter0: java.lang.Object[] 
(assert (not (= var2211 null-__Array__Int__var813__)))
(declare-const var3520 var3794) ; Statement: r6 := @parameter1: com.google.gson.stream.JsonReader 
(assert (not (= var3520 null-var3794)))
(declare-const var1914 var2934) ; Statement: r1 := @parameter2: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField 
(assert (not (= var1914 null-var2934)))
(define-const var3643 var727 (componentIndices/-339183035 var3510)) ; Statement: $r3 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.util.Map componentIndices> 
(define-const var2039 String (fieldName/-2124946699 var1914)) ; Statement: $r2 = r1.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField: java.lang.String fieldName> 
(define-const var1088 var813 (var727_get/1088891777 var3643 (cast-from-String-to-var813 var2039))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var3582 Int (cast-from-var813-to-Int var1088)) ; Statement: r5 = (java.lang.Integer) $r4 
 ; Statement: if r5 != null goto $i0 = virtualinvoke r5.<java.lang.Integer: int intValue()>() 
(assert (not (= var3582 null-Int))) ; Cond: r5 != null 
(assert true)
(define-const var3822 Int (intValue/-1815674922 var3582)) ; Statement: $i0 = virtualinvoke r5.<java.lang.Integer: int intValue()>() 
(assert true)
;(assert (readIntoArray/1014833159 var1914 var3520 var3822 var2211)) ; Statement: virtualinvoke r1.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField: void readIntoArray(com.google.gson.stream.JsonReader,int,java.lang.Object[])>(r6, $i0, r7) 

(declare-const var1914!1 var2934)
(declare-const var3520!1 var3794)
(declare-const var3822!1 Int)
(declare-const var2211!1 (Array Int var813))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {componentIndices/-339183035=([com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter], java.util.Map), fieldName/-2124946699=([com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField], java.lang.String), var727_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var813=([java.lang.String], java.lang.Object), cast-from-var813-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), readIntoArray/1014833159=([com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField, com.google.gson.stream.JsonReader, int, java.lang.Object[]], void)}
; {var3921=com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter, var3510=r0, var813=java.lang.Object, var2211=r7, var3794=com.google.gson.stream.JsonReader, var3520=r6, var2934=com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField, var1914=r1, var727=java.util.Map, var3643=$r3, var2039=$r2, var1088=$r4, var3582=r5, var3822=$i0}
; {com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter=var3921, r0=var3510, java.lang.Object=var813, r7=var2211, com.google.gson.stream.JsonReader=var3794, r6=var3520, com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField=var2934, r1=var1914, java.util.Map=var727, $r3=var3643, $r2=var2039, $r4=var1088, r5=var3582, $i0=var3822}
;seq 
;cnt {}
;stmts r0 := @this: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter;	r7 := @parameter0: java.lang.Object[];	r6 := @parameter1: com.google.gson.stream.JsonReader;	r1 := @parameter2: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField;	$r3 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.util.Map componentIndices>;	$r2 = r1.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField: java.lang.String fieldName>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r5 = (java.lang.Integer) $r4;	if r5 != null goto $i0 = virtualinvoke r5.<java.lang.Integer: int intValue()>();	$i0 = virtualinvoke r5.<java.lang.Integer: int intValue()>();	virtualinvoke r1.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField: void readIntoArray(com.google.gson.stream.JsonReader,int,java.lang.Object[])>(r6, $i0, r7);	return
;block_num 2
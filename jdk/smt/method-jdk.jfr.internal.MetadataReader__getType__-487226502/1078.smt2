(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1781 0)
(declare-sort var1134 0)
(declare-sort var773 0)
(declare-sort var1535 0)
(declare-sort var3521 0)
(declare-sort var890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun longValue/2093908053 (var773 String) Int)
(declare-fun types/-1917822194 (var1781) var1535)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun var1535_get/1088891777 (var1535 var3521) var3521)
(declare-fun cast-from-Int-to-var3521 (Int) var3521)
(declare-fun cast-from-var3521-to-var890 (var3521) var890)
(declare-const null-var1781 var1781)
(declare-const null-String String)
(declare-const null-var773 var773)
(declare-const null-var890 var890)
(declare-const var2841 var1781) ; Statement: r2 := @this: jdk.jfr.internal.MetadataReader 
(assert (not (= var2841 null-var1781)))
(declare-const var949 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var949 null-String)))
(declare-const var2365 var773) ; Statement: r0 := @parameter1: jdk.jfr.internal.MetadataDescriptor$Element 
(assert (not (= var2365 null-var773)))
(assert true)
(define-const var652 Int (longValue/2093908053 var2365 var949)) ; Statement: l0 = virtualinvoke r0.<jdk.jfr.internal.MetadataDescriptor$Element: long longValue(java.lang.String)>(r1) 
(define-const var522 var1535 (types/-1917822194 var2841)) ; Statement: $r3 = r2.<jdk.jfr.internal.MetadataReader: java.util.Map types> 
(define-const var280 Int (Int_valueOf/-1102777585 var652)) ; Statement: $r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0) 
(define-const var79 var3521 (var1535_get/1088891777 var522 (cast-from-Int-to-var3521 var280))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var3426 var890 (cast-from-var3521-to-var890 var79)) ; Statement: r6 = (jdk.jfr.internal.Type) $r5 
 ; Statement: if r6 != null goto return r6 
(assert (not (= var3426 null-var890))) ; Cond: r6 != null 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {longValue/2093908053=([jdk.jfr.internal.MetadataDescriptor$Element, java.lang.String], long), types/-1917822194=([jdk.jfr.internal.MetadataReader], java.util.Map), Int_valueOf/-1102777585=([long], java.lang.Long), var1535_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var3521=([java.lang.Long], java.lang.Object), cast-from-var3521-to-var890=([java.lang.Object], jdk.jfr.internal.Type)}
; {var1781=jdk.jfr.internal.MetadataReader, var2841=r2, var949=r1, var1134=null_type, var773=jdk.jfr.internal.MetadataDescriptor$Element, var2365=r0, var652=l0, var1535=java.util.Map, var522=$r3, var280=$r4, var3521=java.lang.Object, var79=$r5, var890=jdk.jfr.internal.Type, var3426=r6}
; {jdk.jfr.internal.MetadataReader=var1781, r2=var2841, r1=var949, null_type=var1134, jdk.jfr.internal.MetadataDescriptor$Element=var773, r0=var2365, l0=var652, java.util.Map=var1535, $r3=var522, $r4=var280, java.lang.Object=var3521, $r5=var79, jdk.jfr.internal.Type=var890, r6=var3426}
;seq 
;cnt {}
;stmts r2 := @this: jdk.jfr.internal.MetadataReader;	r1 := @parameter0: java.lang.String;	r0 := @parameter1: jdk.jfr.internal.MetadataDescriptor$Element;	l0 = virtualinvoke r0.<jdk.jfr.internal.MetadataDescriptor$Element: long longValue(java.lang.String)>(r1);	$r3 = r2.<jdk.jfr.internal.MetadataReader: java.util.Map types>;	$r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4);	r6 = (jdk.jfr.internal.Type) $r5;	if r6 != null goto return r6;	return r6
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var302 0)
(declare-sort var1920 0)
(declare-sort var781 0)
(declare-sort var681 0)
(declare-sort var3576 0)
(declare-sort var2003 0)
(declare-sort var2615 0)
(declare-sort var1918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var681_isExtendedMap/78356412 (ClassObject) Bool)
(declare-fun fieldName/-2048851183 (var3576) String)
(declare-fun cast-from-var302-to-var3576 (var302) var3576)
(declare-fun context/1442430106 (var1920) var2003)
(declare-fun features/-2048851183 (var3576) Int)
(declare-fun getFeatures/1854782695 (var2003) Int)
(declare-fun mask/-2077367092 (var2615) Int)
(declare-fun provider/-146628731 (var2003) var1918)
(declare-fun fieldType/-2048851183 (var3576) ClassObject)
(declare-fun fieldClass/-2048851183 (var3576) ClassObject)
(declare-fun getObjectWriter/1446925955 (var1918 ClassObject ClassObject Bool) var781)
(declare-fun initObjectWriter/-2048851183 (var3576) var781)
(declare-const null-var302 var302)
(declare-const null-var1920 var1920)
(declare-const null-ClassObject ClassObject)
(declare-const null-var781 var781)
(declare-const var2615-FieldBased var2615)
(declare-const var446 var302) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriterObject 
(assert (not (= var446 null-var302)))
(declare-const var2012 var1920) ; Statement: r7 := @parameter0: com.alibaba.fastjson2.JSONWriter 
(assert (not (= var2012 null-var1920)))
(declare-const var2508 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var2508 null-ClassObject)))
(define-const var1865 var781 null-var781) ; Statement: r29 = null 
(define-const var2274 Bool (var681_isExtendedMap/78356412 var2508)) ; Statement: $z0 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: boolean isExtendedMap(java.lang.Class)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.String format> 
(assert (not (= (ite var2274 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2694 String "$super$") ; Statement: $r20 = "$super$" 
(define-const var2613 String (fieldName/-2048851183 (cast-from-var302-to-var3576 var446))) ; Statement: $r19 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.String fieldName> 
(assert true)
(define-const var3490 Bool (= var2694 var2613)) ; Statement: $z1 = virtualinvoke $r20.<java.lang.String: boolean equals(java.lang.Object)>($r19) 
 ; Statement: if $z1 == 0 goto $r2 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.String format> 
(assert (not (= (ite var3490 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1220 var2003 (context/1442430106 var2012)) ; Statement: r30 = r7.<com.alibaba.fastjson2.JSONWriter: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var3875 Int (features/-2048851183 (cast-from-var302-to-var3576 var446))) ; Statement: $l6 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: long features> 
(assert true)
(define-const var243 Int (getFeatures/1854782695 var1220)) ; Statement: $l7 = virtualinvoke r30.<com.alibaba.fastjson2.JSONWriter$Context: long getFeatures()>() 
(define-const var3739 Int (bv2nat (bvor ((_ int2bv 64) var3875) ((_ int2bv 64) var243)))) ; Statement: $l9 = $l6 | $l7 
(define-const var1416 var2615 var2615-FieldBased) ; Statement: $r21 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature FieldBased> 
(define-const var3021 Int (mask/-2077367092 var1416)) ; Statement: $l8 = $r21.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1039 Int (bv2nat (bvand ((_ int2bv 64) var3739) ((_ int2bv 64) var3021)))) ; Statement: $l10 = $l9 & $l8 
(define-const var1178 Int (ite (> var1039 0) 1 (ite (< var1039 0) (- 1) 0))) ; Statement: $b11 = $l10 cmp 0L 
 ; Statement: if $b11 == 0 goto $z3 = 0 
(assert (= var1178 0)) ; Cond: $b11 == 0 
(define-const var661 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var1301 var1918 (provider/-146628731 var1220)) ; Statement: $r24 = r30.<com.alibaba.fastjson2.JSONWriter$Context: com.alibaba.fastjson2.writer.ObjectWriterProvider provider> 
(define-const var3747 ClassObject (fieldType/-2048851183 (cast-from-var302-to-var3576 var446))) ; Statement: $r23 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.reflect.Type fieldType> 
(define-const var447 ClassObject (fieldClass/-2048851183 (cast-from-var302-to-var3576 var446))) ; Statement: $r22 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class fieldClass> 
(assert true)
(define-const var3684 var781 (getObjectWriter/1446925955 var1301 var3747 var447 var661)) ; Statement: $r28 = virtualinvoke $r24.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.writer.ObjectWriter getObjectWriter(java.lang.reflect.Type,java.lang.Class,boolean)>($r23, $r22, $z3) 
(define-const var2519 var781 (initObjectWriter/-2048851183 (cast-from-var302-to-var3576 var446))) ; Statement: $r25 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: com.alibaba.fastjson2.writer.ObjectWriter initObjectWriter> 
 ; Statement: if $r25 != null goto return $r28 
(assert (not (= var2519 null-var781))) ; Cond: $r25 != null 
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var681_isExtendedMap/78356412=([java.lang.Class], boolean), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), cast-from-var302-to-var3576=([com.alibaba.fastjson2.writer.FieldWriterObject], com.alibaba.fastjson2.writer.FieldWriter), context/1442430106=([com.alibaba.fastjson2.JSONWriter], com.alibaba.fastjson2.JSONWriter$Context), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), getFeatures/1854782695=([com.alibaba.fastjson2.JSONWriter$Context], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), provider/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], com.alibaba.fastjson2.writer.ObjectWriterProvider), fieldType/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Type), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), getObjectWriter/1446925955=([com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.reflect.Type, java.lang.Class, boolean], com.alibaba.fastjson2.writer.ObjectWriter), initObjectWriter/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], com.alibaba.fastjson2.writer.ObjectWriter)}
; {var302=com.alibaba.fastjson2.writer.FieldWriterObject, var446=r1, var1920=com.alibaba.fastjson2.JSONWriter, var2012=r7, var2508=r0, var781=com.alibaba.fastjson2.writer.ObjectWriter, var1865=r29, var681=com.alibaba.fastjson2.util.BeanUtils, var2274=$z0, var2694=$r20, var3576=com.alibaba.fastjson2.writer.FieldWriter, var2613=$r19, var3490=$z1, var2003=com.alibaba.fastjson2.JSONWriter$Context, var1220=r30, var3875=$l6, var243=$l7, var3739=$l9, var2615=com.alibaba.fastjson2.JSONWriter$Feature, var1416=$r21, var3021=$l8, var1039=$l10, var1178=$b11, var661=$z3, var1918=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1301=$r24, var3747=$r23, var447=$r22, var3684=$r28, var2519=$r25}
; {com.alibaba.fastjson2.writer.FieldWriterObject=var302, r1=var446, com.alibaba.fastjson2.JSONWriter=var1920, r7=var2012, r0=var2508, com.alibaba.fastjson2.writer.ObjectWriter=var781, r29=var1865, com.alibaba.fastjson2.util.BeanUtils=var681, $z0=var2274, $r20=var2694, com.alibaba.fastjson2.writer.FieldWriter=var3576, $r19=var2613, $z1=var3490, com.alibaba.fastjson2.JSONWriter$Context=var2003, r30=var1220, $l6=var3875, $l7=var243, $l9=var3739, com.alibaba.fastjson2.JSONWriter$Feature=var2615, $r21=var1416, $l8=var3021, $l10=var1039, $b11=var1178, $z3=var661, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1918, $r24=var1301, $r23=var3747, $r22=var447, $r28=var3684, $r25=var2519}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriterObject;	r7 := @parameter0: com.alibaba.fastjson2.JSONWriter;	r0 := @parameter1: java.lang.Class;	r29 = null;	$z0 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: boolean isExtendedMap(java.lang.Class)>(r0);	if $z0 == 0 goto $r2 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.String format>;	$r20 = "$super$";	$r19 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.String fieldName>;	$z1 = virtualinvoke $r20.<java.lang.String: boolean equals(java.lang.Object)>($r19);	if $z1 == 0 goto $r2 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.String format>;	r30 = r7.<com.alibaba.fastjson2.JSONWriter: com.alibaba.fastjson2.JSONWriter$Context context>;	$l6 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: long features>;	$l7 = virtualinvoke r30.<com.alibaba.fastjson2.JSONWriter$Context: long getFeatures()>();	$l9 = $l6 | $l7;	$r21 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature FieldBased>;	$l8 = $r21.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l10 = $l9 & $l8;	$b11 = $l10 cmp 0L;	if $b11 == 0 goto $z3 = 0;	$z3 = 0;	$r24 = r30.<com.alibaba.fastjson2.JSONWriter$Context: com.alibaba.fastjson2.writer.ObjectWriterProvider provider>;	$r23 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.reflect.Type fieldType>;	$r22 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class fieldClass>;	$r28 = virtualinvoke $r24.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.writer.ObjectWriter getObjectWriter(java.lang.reflect.Type,java.lang.Class,boolean)>($r23, $r22, $z3);	$r25 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: com.alibaba.fastjson2.writer.ObjectWriter initObjectWriter>;	if $r25 != null goto return $r28;	return $r28
;block_num 6
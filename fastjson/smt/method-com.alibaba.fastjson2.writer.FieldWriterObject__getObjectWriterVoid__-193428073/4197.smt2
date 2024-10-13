(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3620 0)
(declare-sort var3146 0)
(declare-sort var3360 0)
(declare-sort var3645 0)
(declare-sort var3240 0)
(declare-sort var2678 0)
(declare-sort var785 0)
(declare-sort var144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3645_isExtendedMap/78356412 (ClassObject) Bool)
(declare-fun fieldName/-2048851183 (var3240) String)
(declare-fun cast-from-var3620-to-var3240 (var3620) var3240)
(declare-fun context/1442430106 (var3146) var2678)
(declare-fun features/-2048851183 (var3240) Int)
(declare-fun getFeatures/1854782695 (var2678) Int)
(declare-fun mask/-2077367092 (var785) Int)
(declare-fun provider/-146628731 (var2678) var144)
(declare-fun fieldType/-2048851183 (var3240) ClassObject)
(declare-fun fieldClass/-2048851183 (var3240) ClassObject)
(declare-fun getObjectWriter/1446925955 (var144 ClassObject ClassObject Bool) var3360)
(declare-fun initObjectWriter/-2048851183 (var3240) var3360)
(declare-const null-var3620 var3620)
(declare-const null-var3146 var3146)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3360 var3360)
(declare-const var785-FieldBased var785)
(declare-const var3784 var3620) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriterObject 
(assert (not (= var3784 null-var3620)))
(declare-const var539 var3146) ; Statement: r7 := @parameter0: com.alibaba.fastjson2.JSONWriter 
(assert (not (= var539 null-var3146)))
(declare-const var3168 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var3168 null-ClassObject)))
(define-const var2738 var3360 null-var3360) ; Statement: r29 = null 
(define-const var330 Bool (var3645_isExtendedMap/78356412 var3168)) ; Statement: $z0 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: boolean isExtendedMap(java.lang.Class)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.String format> 
(assert (not (= (ite var330 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2004 String "$super$") ; Statement: $r20 = "$super$" 
(define-const var3696 String (fieldName/-2048851183 (cast-from-var3620-to-var3240 var3784))) ; Statement: $r19 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.String fieldName> 
(assert true)
(define-const var2286 Bool (= var2004 var3696)) ; Statement: $z1 = virtualinvoke $r20.<java.lang.String: boolean equals(java.lang.Object)>($r19) 
 ; Statement: if $z1 == 0 goto $r2 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.String format> 
(assert (not (= (ite var2286 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1996 var2678 (context/1442430106 var539)) ; Statement: r30 = r7.<com.alibaba.fastjson2.JSONWriter: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var3334 Int (features/-2048851183 (cast-from-var3620-to-var3240 var3784))) ; Statement: $l6 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: long features> 
(assert true)
(define-const var1576 Int (getFeatures/1854782695 var1996)) ; Statement: $l7 = virtualinvoke r30.<com.alibaba.fastjson2.JSONWriter$Context: long getFeatures()>() 
(define-const var3529 Int (bv2nat (bvor ((_ int2bv 64) var3334) ((_ int2bv 64) var1576)))) ; Statement: $l9 = $l6 | $l7 
(define-const var2674 var785 var785-FieldBased) ; Statement: $r21 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature FieldBased> 
(define-const var886 Int (mask/-2077367092 var2674)) ; Statement: $l8 = $r21.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1175 Int (bv2nat (bvand ((_ int2bv 64) var3529) ((_ int2bv 64) var886)))) ; Statement: $l10 = $l9 & $l8 
(define-const var3194 Int (ite (> var1175 0) 1 (ite (< var1175 0) (- 1) 0))) ; Statement: $b11 = $l10 cmp 0L 
 ; Statement: if $b11 == 0 goto $z3 = 0 
(assert (not (= var3194 0))) ; Negate: Cond: $b11 == 0  
(define-const var2233 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= $r24 = r30.<com.alibaba.fastjson2.JSONWriter$Context: com.alibaba.fastjson2.writer.ObjectWriterProvider provider>] 
(assert true) ; Non Conditional
(define-const var3734 var144 (provider/-146628731 var1996)) ; Statement: $r24 = r30.<com.alibaba.fastjson2.JSONWriter$Context: com.alibaba.fastjson2.writer.ObjectWriterProvider provider> 
(define-const var3322 ClassObject (fieldType/-2048851183 (cast-from-var3620-to-var3240 var3784))) ; Statement: $r23 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.reflect.Type fieldType> 
(define-const var3390 ClassObject (fieldClass/-2048851183 (cast-from-var3620-to-var3240 var3784))) ; Statement: $r22 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class fieldClass> 
(assert true)
(define-const var3504 var3360 (getObjectWriter/1446925955 var3734 var3322 var3390 var2233)) ; Statement: $r28 = virtualinvoke $r24.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.writer.ObjectWriter getObjectWriter(java.lang.reflect.Type,java.lang.Class,boolean)>($r23, $r22, $z3) 
(define-const var1715 var3360 (initObjectWriter/-2048851183 (cast-from-var3620-to-var3240 var3784))) ; Statement: $r25 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: com.alibaba.fastjson2.writer.ObjectWriter initObjectWriter> 
 ; Statement: if $r25 != null goto return $r28 
(assert (not (= var1715 null-var3360))) ; Cond: $r25 != null 
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var3645_isExtendedMap/78356412=([java.lang.Class], boolean), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), cast-from-var3620-to-var3240=([com.alibaba.fastjson2.writer.FieldWriterObject], com.alibaba.fastjson2.writer.FieldWriter), context/1442430106=([com.alibaba.fastjson2.JSONWriter], com.alibaba.fastjson2.JSONWriter$Context), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), getFeatures/1854782695=([com.alibaba.fastjson2.JSONWriter$Context], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), provider/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], com.alibaba.fastjson2.writer.ObjectWriterProvider), fieldType/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Type), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), getObjectWriter/1446925955=([com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.reflect.Type, java.lang.Class, boolean], com.alibaba.fastjson2.writer.ObjectWriter), initObjectWriter/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], com.alibaba.fastjson2.writer.ObjectWriter)}
; {var3620=com.alibaba.fastjson2.writer.FieldWriterObject, var3784=r1, var3146=com.alibaba.fastjson2.JSONWriter, var539=r7, var3168=r0, var3360=com.alibaba.fastjson2.writer.ObjectWriter, var2738=r29, var3645=com.alibaba.fastjson2.util.BeanUtils, var330=$z0, var2004=$r20, var3240=com.alibaba.fastjson2.writer.FieldWriter, var3696=$r19, var2286=$z1, var2678=com.alibaba.fastjson2.JSONWriter$Context, var1996=r30, var3334=$l6, var1576=$l7, var3529=$l9, var785=com.alibaba.fastjson2.JSONWriter$Feature, var2674=$r21, var886=$l8, var1175=$l10, var3194=$b11, var2233=$z3, var144=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3734=$r24, var3322=$r23, var3390=$r22, var3504=$r28, var1715=$r25}
; {com.alibaba.fastjson2.writer.FieldWriterObject=var3620, r1=var3784, com.alibaba.fastjson2.JSONWriter=var3146, r7=var539, r0=var3168, com.alibaba.fastjson2.writer.ObjectWriter=var3360, r29=var2738, com.alibaba.fastjson2.util.BeanUtils=var3645, $z0=var330, $r20=var2004, com.alibaba.fastjson2.writer.FieldWriter=var3240, $r19=var3696, $z1=var2286, com.alibaba.fastjson2.JSONWriter$Context=var2678, r30=var1996, $l6=var3334, $l7=var1576, $l9=var3529, com.alibaba.fastjson2.JSONWriter$Feature=var785, $r21=var2674, $l8=var886, $l10=var1175, $b11=var3194, $z3=var2233, com.alibaba.fastjson2.writer.ObjectWriterProvider=var144, $r24=var3734, $r23=var3322, $r22=var3390, $r28=var3504, $r25=var1715}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriterObject;	r7 := @parameter0: com.alibaba.fastjson2.JSONWriter;	r0 := @parameter1: java.lang.Class;	r29 = null;	$z0 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: boolean isExtendedMap(java.lang.Class)>(r0);	if $z0 == 0 goto $r2 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.String format>;	$r20 = "$super$";	$r19 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.String fieldName>;	$z1 = virtualinvoke $r20.<java.lang.String: boolean equals(java.lang.Object)>($r19);	if $z1 == 0 goto $r2 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.String format>;	r30 = r7.<com.alibaba.fastjson2.JSONWriter: com.alibaba.fastjson2.JSONWriter$Context context>;	$l6 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: long features>;	$l7 = virtualinvoke r30.<com.alibaba.fastjson2.JSONWriter$Context: long getFeatures()>();	$l9 = $l6 | $l7;	$r21 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature FieldBased>;	$l8 = $r21.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l10 = $l9 & $l8;	$b11 = $l10 cmp 0L;	if $b11 == 0 goto $z3 = 0;	$z3 = 1;	goto [?= $r24 = r30.<com.alibaba.fastjson2.JSONWriter$Context: com.alibaba.fastjson2.writer.ObjectWriterProvider provider>];	$r24 = r30.<com.alibaba.fastjson2.JSONWriter$Context: com.alibaba.fastjson2.writer.ObjectWriterProvider provider>;	$r23 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.reflect.Type fieldType>;	$r22 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class fieldClass>;	$r28 = virtualinvoke $r24.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.writer.ObjectWriter getObjectWriter(java.lang.reflect.Type,java.lang.Class,boolean)>($r23, $r22, $z3);	$r25 = r1.<com.alibaba.fastjson2.writer.FieldWriterObject: com.alibaba.fastjson2.writer.ObjectWriter initObjectWriter>;	if $r25 != null goto return $r28;	return $r28
;block_num 6
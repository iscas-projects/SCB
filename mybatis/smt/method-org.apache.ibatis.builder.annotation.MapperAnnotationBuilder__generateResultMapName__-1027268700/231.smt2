(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1752 0)
(declare-sort var584 0)
(declare-sort var509 0)
(declare-sort var1471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1471!class ClassObject)
(declare-fun getAnnotation/-287905434 (var584 ClassObject) var509)
(declare-fun cast-from-var509-to-var1471 (var509) var1471)
(declare-fun var1471_id/496978747 (var1471) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-1562462879 (var1752) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1752 var1752)
(declare-const null-var584 var584)
(declare-const null-var1471 var1471)
(declare-const var377 var1752) ; Statement: r5 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var377 null-var1752)))
(declare-const var2685 var584) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var2685 null-var584)))
(assert true)
(define-const var798 var509 (getAnnotation/-287905434 var2685 var1471!class)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/apache/ibatis/annotations/Results;") 
(define-const var1639 var1471 (cast-from-var509-to-var1471 var798)) ; Statement: r2 = (org.apache.ibatis.annotations.Results) $r1 
 ; Statement: if r2 == null goto $r3 = new java.lang.StringBuilder 
(assert (not (= var1639 null-var1471))) ; Negate: Cond: r2 == null  
(define-const var1318 String (var1471_id/496978747 var1639)) ; Statement: $r16 = interfaceinvoke r2.<org.apache.ibatis.annotations.Results: java.lang.String id()>() 
(assert true)
(define-const var1908 Bool (isEmpty/-1285796103 var1318)) ; Statement: $z0 = virtualinvoke $r16.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1908 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3266 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3266)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3266!1 String)
(assert (= var3266!1 ""))
(define-const var888 ClassObject (type/-1562462879 var377)) ; Statement: $r19 = r5.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type> 
(assert true)
(define-const var2710 String (getName/-1958580599 var888)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3984 String (append/672562846 var3266!1 var2710)) ; Statement: $r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var3266!2 String)
(assert (= var3266!2 (str.++ var3266!1 var2710)))
(assert true)
(define-const var1373 String (append/672562846 var3984 ".")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3984!1 String)
(assert (= var3984!1 (str.++ var3984 ".")))
(define-const var1161 String (var1471_id/496978747 var1639)) ; Statement: $r22 = interfaceinvoke r2.<org.apache.ibatis.annotations.Results: java.lang.String id()>() 
(assert true)
(define-const var1504 String (append/672562846 var1373 var1161)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1373!1 String)
(assert (= var1373!1 (str.++ var1373 var1161)))
(assert true)
(define-const var2607 String (toString/-2075883882 var1504)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotation/-287905434=([java.lang.reflect.Method, java.lang.Class], java.lang.annotation.Annotation), cast-from-var509-to-var1471=([java.lang.annotation.Annotation], org.apache.ibatis.annotations.Results), var1471_id/496978747=([org.apache.ibatis.annotations.Results], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1752=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var377=r5, var584=java.lang.reflect.Method, var2685=r0, var509=java.lang.annotation.Annotation, var1471=org.apache.ibatis.annotations.Results, var798=$r1, var1639=r2, var1318=$r16, var1908=$z0, var3266=$r18, var888=$r19, var2710=$r20, var3984=$r21, var1373=$r23, var1161=$r22, var1504=$r24, var2607=$r25}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var1752, r5=var377, java.lang.reflect.Method=var584, r0=var2685, java.lang.annotation.Annotation=var509, org.apache.ibatis.annotations.Results=var1471, $r1=var798, r2=var1639, $r16=var1318, $z0=var1908, $r18=var3266, $r19=var888, $r20=var2710, $r21=var3984, $r23=var1373, $r22=var1161, $r24=var1504, $r25=var2607}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r0 := @parameter0: java.lang.reflect.Method;	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/apache/ibatis/annotations/Results;");	r2 = (org.apache.ibatis.annotations.Results) $r1;	if r2 == null goto $r3 = new java.lang.StringBuilder;	$r16 = interfaceinvoke r2.<org.apache.ibatis.annotations.Results: java.lang.String id()>();	$z0 = virtualinvoke $r16.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r3 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = r5.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: java.lang.Class type>;	$r20 = virtualinvoke $r19.<java.lang.Class: java.lang.String getName()>();	$r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r22 = interfaceinvoke r2.<org.apache.ibatis.annotations.Results: java.lang.String id()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	return $r25
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var318 0)
(declare-sort var3417 0)
(declare-sort var2732 0)
(declare-sort var3216 0)
(declare-sort var3937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var318) String)
(declare-fun var3417-init () var3417)
(declare-fun <init>/-201242697 (var3417) void)
(declare-fun cast-from-var3417-to-var2732 (var3417) var2732)
(declare-fun var2732_put/1464166817 (var2732 var3937 var3937) var3937)
(declare-fun cast-from-String-to-var3937 (String) var3937)
(declare-const var318-ROOT var318)
(declare-const var3216-HQL_COLLECTION_PROPERTIES var2732)
(declare-const var3216-COLLECTION_INDEX_LOWER String)
(define-const var70 String "index") ; Statement: $r1 = "index" 
(define-const var3585 var318 var318-ROOT) ; Statement: $r0 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1989 String (toLowerCase/1946809429 var70 var3585)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
(define-const var2299 String var1989) ; Statement: <org.hibernate.hql.internal.CollectionProperties: java.lang.String COLLECTION_INDEX_LOWER> = $r2 
(define-const var2313 var3417 var3417-init) ; Statement: $r3 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2313)) ; Statement: specialinvoke $r3.<java.util.HashMap: void <init>()>() 

(declare-const var2313!1 var3417)
(define-const var221 var2732 (cast-from-var3417-to-var2732 var2313!1)) ; Statement: <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> = $r3 
(define-const var2527 var2732 var3216-HQL_COLLECTION_PROPERTIES) ; Statement: $r6 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> 
(define-const var1250 String "elements") ; Statement: $r5 = "elements" 
(define-const var2850 var318 var318-ROOT) ; Statement: $r4 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2522 String (toLowerCase/1946809429 var1250 var2850)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r4) 
;(assert (var2732_put/1464166817 var2527 (cast-from-String-to-var3937 var2522) (cast-from-String-to-var3937 "elements"))) ; Statement: interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r7, "elements") 

(declare-const var2527!1 var2732)
(declare-const var2522!1 String)
(declare-const var1657 String)
(define-const var120 var2732 var3216-HQL_COLLECTION_PROPERTIES) ; Statement: $r10 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> 
(define-const var1949 String "indices") ; Statement: $r9 = "indices" 
(define-const var2824 var318 var318-ROOT) ; Statement: $r8 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3120 String (toLowerCase/1946809429 var1949 var2824)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r8) 
;(assert (var2732_put/1464166817 var120 (cast-from-String-to-var3937 var3120) (cast-from-String-to-var3937 "indices"))) ; Statement: interfaceinvoke $r10.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r11, "indices") 

(declare-const var120!1 var2732)
(declare-const var3120!1 String)
(declare-const var2079 String)
(define-const var682 var2732 var3216-HQL_COLLECTION_PROPERTIES) ; Statement: $r14 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> 
(define-const var3957 String "size") ; Statement: $r13 = "size" 
(define-const var1419 var318 var318-ROOT) ; Statement: $r12 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var497 String (toLowerCase/1946809429 var3957 var1419)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r12) 
;(assert (var2732_put/1464166817 var682 (cast-from-String-to-var3937 var497) (cast-from-String-to-var3937 "size"))) ; Statement: interfaceinvoke $r14.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r15, "size") 

(declare-const var682!1 var2732)
(declare-const var497!1 String)
(declare-const var1995 String)
(define-const var1320 var2732 var3216-HQL_COLLECTION_PROPERTIES) ; Statement: $r18 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> 
(define-const var3295 String "maxIndex") ; Statement: $r17 = "maxIndex" 
(define-const var1670 var318 var318-ROOT) ; Statement: $r16 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3606 String (toLowerCase/1946809429 var3295 var1670)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r16) 
;(assert (var2732_put/1464166817 var1320 (cast-from-String-to-var3937 var3606) (cast-from-String-to-var3937 "maxIndex"))) ; Statement: interfaceinvoke $r18.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r19, "maxIndex") 

(declare-const var1320!1 var2732)
(declare-const var3606!1 String)
(declare-const var3701 String)
(define-const var1433 var2732 var3216-HQL_COLLECTION_PROPERTIES) ; Statement: $r22 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> 
(define-const var2051 String "minIndex") ; Statement: $r21 = "minIndex" 
(define-const var3619 var318 var318-ROOT) ; Statement: $r20 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2179 String (toLowerCase/1946809429 var2051 var3619)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r20) 
;(assert (var2732_put/1464166817 var1433 (cast-from-String-to-var3937 var2179) (cast-from-String-to-var3937 "minIndex"))) ; Statement: interfaceinvoke $r22.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r23, "minIndex") 

(declare-const var1433!1 var2732)
(declare-const var2179!1 String)
(declare-const var2941 String)
(define-const var709 var2732 var3216-HQL_COLLECTION_PROPERTIES) ; Statement: $r26 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> 
(define-const var3640 String "maxElement") ; Statement: $r25 = "maxElement" 
(define-const var1375 var318 var318-ROOT) ; Statement: $r24 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3554 String (toLowerCase/1946809429 var3640 var1375)) ; Statement: $r27 = virtualinvoke $r25.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r24) 
;(assert (var2732_put/1464166817 var709 (cast-from-String-to-var3937 var3554) (cast-from-String-to-var3937 "maxElement"))) ; Statement: interfaceinvoke $r26.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r27, "maxElement") 

(declare-const var709!1 var2732)
(declare-const var3554!1 String)
(declare-const var3461 String)
(define-const var1029 var2732 var3216-HQL_COLLECTION_PROPERTIES) ; Statement: $r30 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> 
(define-const var3860 String "minElement") ; Statement: $r29 = "minElement" 
(define-const var3949 var318 var318-ROOT) ; Statement: $r28 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3202 String (toLowerCase/1946809429 var3860 var3949)) ; Statement: $r31 = virtualinvoke $r29.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r28) 
;(assert (var2732_put/1464166817 var1029 (cast-from-String-to-var3937 var3202) (cast-from-String-to-var3937 "minElement"))) ; Statement: interfaceinvoke $r30.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r31, "minElement") 

(declare-const var1029!1 var2732)
(declare-const var3202!1 String)
(declare-const var156 String)
(define-const var2468 var2732 var3216-HQL_COLLECTION_PROPERTIES) ; Statement: $r33 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> 
(define-const var3114 String var3216-COLLECTION_INDEX_LOWER) ; Statement: $r32 = <org.hibernate.hql.internal.CollectionProperties: java.lang.String COLLECTION_INDEX_LOWER> 
;(assert (var2732_put/1464166817 var2468 (cast-from-String-to-var3937 var3114) (cast-from-String-to-var3937 "index"))) ; Statement: interfaceinvoke $r33.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r32, "index") 

(declare-const var2468!1 var2732)
(declare-const var3114!1 String)
(declare-const var1034 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var3417-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var3417-to-var2732=([java.util.HashMap], java.util.Map), var2732_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3937=([java.lang.String], java.lang.Object)}
; {var70=$r1, var318=java.util.Locale, var3585=$r0, var1989=$r2, var2299=<org.hibernate.hql.internal.CollectionProperties: java.lang.String COLLECTION_INDEX_LOWER>, var3417=java.util.HashMap, var2313=$r3, var2732=java.util.Map, var221=<org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>, var3216=org.hibernate.hql.internal.CollectionProperties, var2527=$r6, var1250=$r5, var2850=$r4, var2522=$r7, var3937=java.lang.Object, var1657="elements", var120=$r10, var1949=$r9, var2824=$r8, var3120=$r11, var2079="indices", var682=$r14, var3957=$r13, var1419=$r12, var497=$r15, var1995="size", var1320=$r18, var3295=$r17, var1670=$r16, var3606=$r19, var3701="maxIndex", var1433=$r22, var2051=$r21, var3619=$r20, var2179=$r23, var2941="minIndex", var709=$r26, var3640=$r25, var1375=$r24, var3554=$r27, var3461="maxElement", var1029=$r30, var3860=$r29, var3949=$r28, var3202=$r31, var156="minElement", var2468=$r33, var3114=$r32, var1034="index"}
; {$r1=var70, java.util.Locale=var318, $r0=var3585, $r2=var1989, <org.hibernate.hql.internal.CollectionProperties: java.lang.String COLLECTION_INDEX_LOWER>=var2299, java.util.HashMap=var3417, $r3=var2313, java.util.Map=var2732, <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>=var221, org.hibernate.hql.internal.CollectionProperties=var3216, $r6=var2527, $r5=var1250, $r4=var2850, $r7=var2522, java.lang.Object=var3937, "elements"=var1657, $r10=var120, $r9=var1949, $r8=var2824, $r11=var3120, "indices"=var2079, $r14=var682, $r13=var3957, $r12=var1419, $r15=var497, "size"=var1995, $r18=var1320, $r17=var3295, $r16=var1670, $r19=var3606, "maxIndex"=var3701, $r22=var1433, $r21=var2051, $r20=var3619, $r23=var2179, "minIndex"=var2941, $r26=var709, $r25=var3640, $r24=var1375, $r27=var3554, "maxElement"=var3461, $r30=var1029, $r29=var3860, $r28=var3949, $r31=var3202, "minElement"=var156, $r33=var2468, $r32=var3114, "index"=var1034}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 8}
;stmts $r1 = "index";	$r0 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	<org.hibernate.hql.internal.CollectionProperties: java.lang.String COLLECTION_INDEX_LOWER> = $r2;	$r3 = new java.util.HashMap;	specialinvoke $r3.<java.util.HashMap: void <init>()>();	<org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> = $r3;	$r6 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>;	$r5 = "elements";	$r4 = <java.util.Locale: java.util.Locale ROOT>;	$r7 = virtualinvoke $r5.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r4);	interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r7, "elements");	$r10 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>;	$r9 = "indices";	$r8 = <java.util.Locale: java.util.Locale ROOT>;	$r11 = virtualinvoke $r9.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r8);	interfaceinvoke $r10.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r11, "indices");	$r14 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>;	$r13 = "size";	$r12 = <java.util.Locale: java.util.Locale ROOT>;	$r15 = virtualinvoke $r13.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r12);	interfaceinvoke $r14.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r15, "size");	$r18 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>;	$r17 = "maxIndex";	$r16 = <java.util.Locale: java.util.Locale ROOT>;	$r19 = virtualinvoke $r17.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r16);	interfaceinvoke $r18.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r19, "maxIndex");	$r22 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>;	$r21 = "minIndex";	$r20 = <java.util.Locale: java.util.Locale ROOT>;	$r23 = virtualinvoke $r21.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r20);	interfaceinvoke $r22.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r23, "minIndex");	$r26 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>;	$r25 = "maxElement";	$r24 = <java.util.Locale: java.util.Locale ROOT>;	$r27 = virtualinvoke $r25.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r24);	interfaceinvoke $r26.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r27, "maxElement");	$r30 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>;	$r29 = "minElement";	$r28 = <java.util.Locale: java.util.Locale ROOT>;	$r31 = virtualinvoke $r29.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r28);	interfaceinvoke $r30.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r31, "minElement");	$r33 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>;	$r32 = <org.hibernate.hql.internal.CollectionProperties: java.lang.String COLLECTION_INDEX_LOWER>;	interfaceinvoke $r33.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r32, "index");	return
;block_num 1
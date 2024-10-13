(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3821 0)
(declare-sort var2856 0)
(declare-sort var3891 0)
(declare-sort var3685 0)
(declare-sort var3647 0)
(declare-sort var1180 0)
(declare-sort var2090 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun createAdapterFactory/1468715664 (var1180 String) var3647)
(declare-fun var3891_add/328494887 (var3891 var2090) Bool)
(declare-fun cast-from-var3647-to-var2090 (var3647) var2090)
(declare-const null-var3821 var3821)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3891 var3891)
(declare-const var3685-SUPPORTS_SQL_TYPES Bool)
(declare-const null-var3647 var3647)
(declare-const var1180-DATE var1180)
(declare-const var95 var3821) ; Statement: r9 := @this: com.google.gson.GsonBuilder 
(assert (not (= var95 null-var3821)))
(declare-const var2617 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2617 null-String)))
(declare-const var2109 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2109 null-Int)))
(declare-const var325 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var325 null-Int)))
(declare-const var838 var3891) ; Statement: r2 := @parameter3: java.util.List 
(assert (not (= var838 null-var3891)))
(define-const var1908 Bool var3685-SUPPORTS_SQL_TYPES) ; Statement: z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES> 
(define-const var905 var3647 null-var3647) ; Statement: r10 = null 
(define-const var1167 var3647 null-var3647) ; Statement: r11 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var2617 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var1868 String (trim/-847153721 var2617)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2007 Bool (isEmpty/-1285796103 var1868)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (not (= (ite var2007 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1088 var1180 var1180-DATE) ; Statement: $r6 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE> 
(assert true)
(define-const var2346 var3647 (createAdapterFactory/1468715664 var1088 var2617)) ; Statement: r12 = virtualinvoke $r6.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0) 
 ; Statement: if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 
(assert (= (ite var1908 1 0) 0)) ; Cond: z0 == 0 
;(assert (var3891_add/328494887 var838 (cast-from-var3647-to-var2090 var2346))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 

(declare-const var838!1 var3891)
(declare-const var2346!1 var3647)
 ; Statement: if z0 == 0 goto return 
(assert (not (= (ite var1908 1 0) 0))) ; Negate: Cond: z0 == 0  
;(assert (var3891_add/328494887 var838!1 (cast-from-var3647-to-var2090 var905))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r10) 

(declare-const var838!2 var3891)
(declare-const var905!1 var3647)
;(assert (var3891_add/328494887 var838!2 (cast-from-var3647-to-var2090 var1167))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r11) 

(declare-const var838!3 var3891)
(declare-const var1167!1 var3647)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), createAdapterFactory/1468715664=([com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, java.lang.String], com.google.gson.TypeAdapterFactory), var3891_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3647-to-var2090=([com.google.gson.TypeAdapterFactory], java.lang.Object)}
; {var3821=com.google.gson.GsonBuilder, var95=r9, var2617=r0, var2856=null_type, var2109=i0, var325=i1, var3891=java.util.List, var838=r2, var3685=com.google.gson.internal.sql.SqlTypesSupport, var1908=z0, var3647=com.google.gson.TypeAdapterFactory, var905=r10, var1167=r11, var1868=$r5, var2007=$z1, var1180=com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, var1088=$r6, var2346=r12, var2090=java.lang.Object}
; {com.google.gson.GsonBuilder=var3821, r9=var95, r0=var2617, null_type=var2856, i0=var2109, i1=var325, java.util.List=var3891, r2=var838, com.google.gson.internal.sql.SqlTypesSupport=var3685, z0=var1908, com.google.gson.TypeAdapterFactory=var3647, r10=var905, r11=var1167, $r5=var1868, $z1=var2007, com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType=var1180, $r6=var1088, r12=var2346, java.lang.Object=var2090}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r9 := @this: com.google.gson.GsonBuilder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r2 := @parameter3: java.util.List;	z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES>;	r10 = null;	r11 = null;	if r0 == null goto (branch);	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto (branch);	$r6 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE>;	r12 = virtualinvoke $r6.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0);	if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	if z0 == 0 goto return;	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r10);	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r11);	return
;block_num 6
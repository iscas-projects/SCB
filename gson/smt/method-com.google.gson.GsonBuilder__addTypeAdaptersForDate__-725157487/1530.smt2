(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3309 0)
(declare-sort var1042 0)
(declare-sort var2835 0)
(declare-sort var1207 0)
(declare-sort var859 0)
(declare-sort var2996 0)
(declare-sort var3611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun createAdapterFactory/1468715664 (var2996 String) var859)
(declare-fun var2835_add/328494887 (var2835 var3611) Bool)
(declare-fun cast-from-var859-to-var3611 (var859) var3611)
(declare-const null-var3309 var3309)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2835 var2835)
(declare-const var1207-SUPPORTS_SQL_TYPES Bool)
(declare-const null-var859 var859)
(declare-const var2996-DATE var2996)
(declare-const var1207-TIMESTAMP_DATE_TYPE var2996)
(declare-const var1207-DATE_DATE_TYPE var2996)
(declare-const var3504 var3309) ; Statement: r9 := @this: com.google.gson.GsonBuilder 
(assert (not (= var3504 null-var3309)))
(declare-const var1829 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1829 null-String)))
(declare-const var922 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var922 null-Int)))
(declare-const var2594 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2594 null-Int)))
(declare-const var3298 var2835) ; Statement: r2 := @parameter3: java.util.List 
(assert (not (= var3298 null-var2835)))
(define-const var3478 Bool var1207-SUPPORTS_SQL_TYPES) ; Statement: z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES> 
(define-const var2081 var859 null-var859) ; Statement: r10 = null 
(define-const var3715 var859 null-var859) ; Statement: r11 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var1829 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var17 String (trim/-847153721 var1829)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var722 Bool (isEmpty/-1285796103 var17)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (not (= (ite var722 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3913 var2996 var2996-DATE) ; Statement: $r6 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE> 
(assert true)
(define-const var2703 var859 (createAdapterFactory/1468715664 var3913 var1829)) ; Statement: r12 = virtualinvoke $r6.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0) 
 ; Statement: if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 
(assert (not (= (ite var3478 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2551 var2996 var1207-TIMESTAMP_DATE_TYPE) ; Statement: $r7 = <com.google.gson.internal.sql.SqlTypesSupport: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType TIMESTAMP_DATE_TYPE> 
(assert true)
(define-const var2081!1 var859 (createAdapterFactory/1468715664 var2551 var1829)) ; Statement: r10 = virtualinvoke $r7.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0) 
(define-const var3439 var2996 var1207-DATE_DATE_TYPE) ; Statement: $r8 = <com.google.gson.internal.sql.SqlTypesSupport: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE_DATE_TYPE> 
(assert true)
(define-const var3715!1 var859 (createAdapterFactory/1468715664 var3439 var1829)) ; Statement: r11 = virtualinvoke $r8.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0) 
 ; Statement: goto [?= interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12)] 
(assert true) ; Non Conditional
;(assert (var2835_add/328494887 var3298 (cast-from-var859-to-var3611 var2703))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 

(declare-const var3298!1 var2835)
(declare-const var2703!1 var859)
 ; Statement: if z0 == 0 goto return 
(assert (not (= (ite var3478 1 0) 0))) ; Negate: Cond: z0 == 0  
;(assert (var2835_add/328494887 var3298!1 (cast-from-var859-to-var3611 var2081!1))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r10) 

(declare-const var3298!2 var2835)
(declare-const var2081!2 var859)
;(assert (var2835_add/328494887 var3298!2 (cast-from-var859-to-var3611 var3715!1))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r11) 

(declare-const var3298!3 var2835)
(declare-const var3715!2 var859)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), createAdapterFactory/1468715664=([com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, java.lang.String], com.google.gson.TypeAdapterFactory), var2835_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var859-to-var3611=([com.google.gson.TypeAdapterFactory], java.lang.Object)}
; {var3309=com.google.gson.GsonBuilder, var3504=r9, var1829=r0, var1042=null_type, var922=i0, var2594=i1, var2835=java.util.List, var3298=r2, var1207=com.google.gson.internal.sql.SqlTypesSupport, var3478=z0, var859=com.google.gson.TypeAdapterFactory, var2081=r10, var3715=r11, var17=$r5, var722=$z1, var2996=com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, var3913=$r6, var2703=r12, var2551=$r7, var3439=$r8, var3611=java.lang.Object}
; {com.google.gson.GsonBuilder=var3309, r9=var3504, r0=var1829, null_type=var1042, i0=var922, i1=var2594, java.util.List=var2835, r2=var3298, com.google.gson.internal.sql.SqlTypesSupport=var1207, z0=var3478, com.google.gson.TypeAdapterFactory=var859, r10=var2081, r11=var3715, $r5=var17, $z1=var722, com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType=var2996, $r6=var3913, r12=var2703, $r7=var2551, $r8=var3439, java.lang.Object=var3611}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r9 := @this: com.google.gson.GsonBuilder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r2 := @parameter3: java.util.List;	z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES>;	r10 = null;	r11 = null;	if r0 == null goto (branch);	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto (branch);	$r6 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE>;	r12 = virtualinvoke $r6.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0);	if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	$r7 = <com.google.gson.internal.sql.SqlTypesSupport: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType TIMESTAMP_DATE_TYPE>;	r10 = virtualinvoke $r7.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0);	$r8 = <com.google.gson.internal.sql.SqlTypesSupport: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE_DATE_TYPE>;	r11 = virtualinvoke $r8.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0);	goto [?= interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12)];	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	if z0 == 0 goto return;	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r10);	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r11);	return
;block_num 7
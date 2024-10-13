(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1230 0)
(declare-sort var1766 0)
(declare-sort var1366 0)
(declare-sort var1368 0)
(declare-sort var2885 0)
(declare-sort var1845 0)
(declare-sort var2648 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun createAdapterFactory/1468715664 (var1845 String) var2885)
(declare-fun var1366_add/328494887 (var1366 var2648) Bool)
(declare-fun cast-from-var2885-to-var2648 (var2885) var2648)
(declare-const null-var1230 var1230)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1366 var1366)
(declare-const var1368-SUPPORTS_SQL_TYPES Bool)
(declare-const null-var2885 var2885)
(declare-const var1845-DATE var1845)
(declare-const var1368-TIMESTAMP_DATE_TYPE var1845)
(declare-const var1368-DATE_DATE_TYPE var1845)
(declare-const var2867 var1230) ; Statement: r9 := @this: com.google.gson.GsonBuilder 
(assert (not (= var2867 null-var1230)))
(declare-const var344 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var344 null-String)))
(declare-const var3437 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3437 null-Int)))
(declare-const var1729 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1729 null-Int)))
(declare-const var172 var1366) ; Statement: r2 := @parameter3: java.util.List 
(assert (not (= var172 null-var1366)))
(define-const var3882 Bool var1368-SUPPORTS_SQL_TYPES) ; Statement: z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES> 
(define-const var1297 var2885 null-var2885) ; Statement: r10 = null 
(define-const var2474 var2885 null-var2885) ; Statement: r11 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var344 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var867 String (trim/-847153721 var344)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3113 Bool (isEmpty/-1285796103 var867)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (not (= (ite var3113 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2767 var1845 var1845-DATE) ; Statement: $r6 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE> 
(assert true)
(define-const var3055 var2885 (createAdapterFactory/1468715664 var2767 var344)) ; Statement: r12 = virtualinvoke $r6.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0) 
 ; Statement: if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 
(assert (not (= (ite var3882 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3693 var1845 var1368-TIMESTAMP_DATE_TYPE) ; Statement: $r7 = <com.google.gson.internal.sql.SqlTypesSupport: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType TIMESTAMP_DATE_TYPE> 
(assert true)
(define-const var1297!1 var2885 (createAdapterFactory/1468715664 var3693 var344)) ; Statement: r10 = virtualinvoke $r7.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0) 
(define-const var476 var1845 var1368-DATE_DATE_TYPE) ; Statement: $r8 = <com.google.gson.internal.sql.SqlTypesSupport: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE_DATE_TYPE> 
(assert true)
(define-const var2474!1 var2885 (createAdapterFactory/1468715664 var476 var344)) ; Statement: r11 = virtualinvoke $r8.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0) 
 ; Statement: goto [?= interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12)] 
(assert true) ; Non Conditional
;(assert (var1366_add/328494887 var172 (cast-from-var2885-to-var2648 var3055))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 

(declare-const var172!1 var1366)
(declare-const var3055!1 var2885)
 ; Statement: if z0 == 0 goto return 
(assert (= (ite var3882 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), createAdapterFactory/1468715664=([com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, java.lang.String], com.google.gson.TypeAdapterFactory), var1366_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var2885-to-var2648=([com.google.gson.TypeAdapterFactory], java.lang.Object)}
; {var1230=com.google.gson.GsonBuilder, var2867=r9, var344=r0, var1766=null_type, var3437=i0, var1729=i1, var1366=java.util.List, var172=r2, var1368=com.google.gson.internal.sql.SqlTypesSupport, var3882=z0, var2885=com.google.gson.TypeAdapterFactory, var1297=r10, var2474=r11, var867=$r5, var3113=$z1, var1845=com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, var2767=$r6, var3055=r12, var3693=$r7, var476=$r8, var2648=java.lang.Object}
; {com.google.gson.GsonBuilder=var1230, r9=var2867, r0=var344, null_type=var1766, i0=var3437, i1=var1729, java.util.List=var1366, r2=var172, com.google.gson.internal.sql.SqlTypesSupport=var1368, z0=var3882, com.google.gson.TypeAdapterFactory=var2885, r10=var1297, r11=var2474, $r5=var867, $z1=var3113, com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType=var1845, $r6=var2767, r12=var3055, $r7=var3693, $r8=var476, java.lang.Object=var2648}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r9 := @this: com.google.gson.GsonBuilder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r2 := @parameter3: java.util.List;	z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES>;	r10 = null;	r11 = null;	if r0 == null goto (branch);	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto (branch);	$r6 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE>;	r12 = virtualinvoke $r6.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0);	if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	$r7 = <com.google.gson.internal.sql.SqlTypesSupport: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType TIMESTAMP_DATE_TYPE>;	r10 = virtualinvoke $r7.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0);	$r8 = <com.google.gson.internal.sql.SqlTypesSupport: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE_DATE_TYPE>;	r11 = virtualinvoke $r8.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0);	goto [?= interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12)];	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	if z0 == 0 goto return;	return
;block_num 6
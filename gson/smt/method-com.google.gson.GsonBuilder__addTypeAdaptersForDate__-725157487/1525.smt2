(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3084 0)
(declare-sort var1760 0)
(declare-sort var2922 0)
(declare-sort var2431 0)
(declare-sort var3024 0)
(declare-sort var1504 0)
(declare-sort var3098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun createAdapterFactory/1468715664 (var1504 String) var3024)
(declare-fun var2922_add/328494887 (var2922 var3098) Bool)
(declare-fun cast-from-var3024-to-var3098 (var3024) var3098)
(declare-const null-var3084 var3084)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2922 var2922)
(declare-const var2431-SUPPORTS_SQL_TYPES Bool)
(declare-const null-var3024 var3024)
(declare-const var1504-DATE var1504)
(declare-const var1485 var3084) ; Statement: r9 := @this: com.google.gson.GsonBuilder 
(assert (not (= var1485 null-var3084)))
(declare-const var641 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var641 null-String)))
(declare-const var221 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var221 null-Int)))
(declare-const var1318 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1318 null-Int)))
(declare-const var3637 var2922) ; Statement: r2 := @parameter3: java.util.List 
(assert (not (= var3637 null-var2922)))
(define-const var2173 Bool var2431-SUPPORTS_SQL_TYPES) ; Statement: z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES> 
(define-const var3133 var3024 null-var3024) ; Statement: r10 = null 
(define-const var41 var3024 null-var3024) ; Statement: r11 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var641 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var3470 String (trim/-847153721 var641)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3569 Bool (isEmpty/-1285796103 var3470)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (not (= (ite var3569 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var758 var1504 var1504-DATE) ; Statement: $r6 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE> 
(assert true)
(define-const var869 var3024 (createAdapterFactory/1468715664 var758 var641)) ; Statement: r12 = virtualinvoke $r6.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0) 
 ; Statement: if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 
(assert (= (ite var2173 1 0) 0)) ; Cond: z0 == 0 
;(assert (var2922_add/328494887 var3637 (cast-from-var3024-to-var3098 var869))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 

(declare-const var3637!1 var2922)
(declare-const var869!1 var3024)
 ; Statement: if z0 == 0 goto return 
(assert (= (ite var2173 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), createAdapterFactory/1468715664=([com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, java.lang.String], com.google.gson.TypeAdapterFactory), var2922_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3024-to-var3098=([com.google.gson.TypeAdapterFactory], java.lang.Object)}
; {var3084=com.google.gson.GsonBuilder, var1485=r9, var641=r0, var1760=null_type, var221=i0, var1318=i1, var2922=java.util.List, var3637=r2, var2431=com.google.gson.internal.sql.SqlTypesSupport, var2173=z0, var3024=com.google.gson.TypeAdapterFactory, var3133=r10, var41=r11, var3470=$r5, var3569=$z1, var1504=com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, var758=$r6, var869=r12, var3098=java.lang.Object}
; {com.google.gson.GsonBuilder=var3084, r9=var1485, r0=var641, null_type=var1760, i0=var221, i1=var1318, java.util.List=var2922, r2=var3637, com.google.gson.internal.sql.SqlTypesSupport=var2431, z0=var2173, com.google.gson.TypeAdapterFactory=var3024, r10=var3133, r11=var41, $r5=var3470, $z1=var3569, com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType=var1504, $r6=var758, r12=var869, java.lang.Object=var3098}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r9 := @this: com.google.gson.GsonBuilder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r2 := @parameter3: java.util.List;	z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES>;	r10 = null;	r11 = null;	if r0 == null goto (branch);	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto (branch);	$r6 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE>;	r12 = virtualinvoke $r6.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(java.lang.String)>(r0);	if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	if z0 == 0 goto return;	return
;block_num 5
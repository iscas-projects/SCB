(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3897 0)
(declare-sort var3617 0)
(declare-sort var2153 0)
(declare-sort var3687 0)
(declare-sort var1885 0)
(declare-sort var2813 0)
(declare-sort var2333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createAdapterFactory/-190254991 (var2813 Int Int) var1885)
(declare-fun var2153_add/328494887 (var2153 var2333) Bool)
(declare-fun cast-from-var1885-to-var2333 (var1885) var2333)
(declare-const null-var3897 var3897)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2153 var2153)
(declare-const var3687-SUPPORTS_SQL_TYPES Bool)
(declare-const null-var1885 var1885)
(declare-const var2813-DATE var2813)
(declare-const var2972 var3897) ; Statement: r9 := @this: com.google.gson.GsonBuilder 
(assert (not (= var2972 null-var3897)))
(declare-const var33 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var33 null-String)))
(declare-const var1049 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1049 null-Int)))
(declare-const var2616 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2616 null-Int)))
(declare-const var1812 var2153) ; Statement: r2 := @parameter3: java.util.List 
(assert (not (= var1812 null-var2153)))
(define-const var1954 Bool var3687-SUPPORTS_SQL_TYPES) ; Statement: z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES> 
(define-const var1105 var1885 null-var1885) ; Statement: r10 = null 
(define-const var3118 var1885 null-var1885) ; Statement: r11 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (= var33 null-String)) ; Cond: r0 == null 
 ; Statement: if i0 == 2 goto return 
(assert (not (= var1049 2))) ; Negate: Cond: i0 == 2  
 ; Statement: if i1 == 2 goto return 
(assert (not (= var2616 2))) ; Negate: Cond: i1 == 2  
(define-const var3716 var2813 var2813-DATE) ; Statement: $r1 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE> 
(assert true)
(define-const var1415 var1885 (createAdapterFactory/-190254991 var3716 var1049 var2616)) ; Statement: r12 = virtualinvoke $r1.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(int,int)>(i0, i1) 
 ; Statement: if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 
(assert (= (ite var1954 1 0) 0)) ; Cond: z0 == 0 
;(assert (var2153_add/328494887 var1812 (cast-from-var1885-to-var2333 var1415))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 

(declare-const var1812!1 var2153)
(declare-const var1415!1 var1885)
 ; Statement: if z0 == 0 goto return 
(assert (not (= (ite var1954 1 0) 0))) ; Negate: Cond: z0 == 0  
;(assert (var2153_add/328494887 var1812!1 (cast-from-var1885-to-var2333 var1105))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r10) 

(declare-const var1812!2 var2153)
(declare-const var1105!1 var1885)
;(assert (var2153_add/328494887 var1812!2 (cast-from-var1885-to-var2333 var3118))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r11) 

(declare-const var1812!3 var2153)
(declare-const var3118!1 var1885)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {createAdapterFactory/-190254991=([com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, int, int], com.google.gson.TypeAdapterFactory), var2153_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1885-to-var2333=([com.google.gson.TypeAdapterFactory], java.lang.Object)}
; {var3897=com.google.gson.GsonBuilder, var2972=r9, var33=r0, var3617=null_type, var1049=i0, var2616=i1, var2153=java.util.List, var1812=r2, var3687=com.google.gson.internal.sql.SqlTypesSupport, var1954=z0, var1885=com.google.gson.TypeAdapterFactory, var1105=r10, var3118=r11, var2813=com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, var3716=$r1, var1415=r12, var2333=java.lang.Object}
; {com.google.gson.GsonBuilder=var3897, r9=var2972, r0=var33, null_type=var3617, i0=var1049, i1=var2616, java.util.List=var2153, r2=var1812, com.google.gson.internal.sql.SqlTypesSupport=var3687, z0=var1954, com.google.gson.TypeAdapterFactory=var1885, r10=var1105, r11=var3118, com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType=var2813, $r1=var3716, r12=var1415, java.lang.Object=var2333}
;seq 
;cnt {}
;stmts r9 := @this: com.google.gson.GsonBuilder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r2 := @parameter3: java.util.List;	z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES>;	r10 = null;	r11 = null;	if r0 == null goto (branch);	if i0 == 2 goto return;	if i1 == 2 goto return;	$r1 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE>;	r12 = virtualinvoke $r1.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(int,int)>(i0, i1);	if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	if z0 == 0 goto return;	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r10);	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r11);	return
;block_num 7
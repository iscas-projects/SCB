(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3622 0)
(declare-sort var385 0)
(declare-sort var1964 0)
(declare-sort var1205 0)
(declare-sort var863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3622 var3622)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1964 var1964)
(declare-const var1205-SUPPORTS_SQL_TYPES Bool)
(declare-const null-var863 var863)
(declare-const var2802 var3622) ; Statement: r9 := @this: com.google.gson.GsonBuilder 
(assert (not (= var2802 null-var3622)))
(declare-const var3877 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3877 null-String)))
(declare-const var2612 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2612 null-Int)))
(declare-const var2211 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2211 null-Int)))
(declare-const var3070 var1964) ; Statement: r2 := @parameter3: java.util.List 
(assert (not (= var3070 null-var1964)))
(define-const var2216 Bool var1205-SUPPORTS_SQL_TYPES) ; Statement: z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES> 
(define-const var426 var863 null-var863) ; Statement: r10 = null 
(define-const var3858 var863 null-var863) ; Statement: r11 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (= var3877 null-String)) ; Cond: r0 == null 
 ; Statement: if i0 == 2 goto return 
(assert (not (= var2612 2))) ; Negate: Cond: i0 == 2  
 ; Statement: if i1 == 2 goto return 
(assert (= var2211 2)) ; Cond: i1 == 2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3622=com.google.gson.GsonBuilder, var2802=r9, var3877=r0, var385=null_type, var2612=i0, var2211=i1, var1964=java.util.List, var3070=r2, var1205=com.google.gson.internal.sql.SqlTypesSupport, var2216=z0, var863=com.google.gson.TypeAdapterFactory, var426=r10, var3858=r11}
; {com.google.gson.GsonBuilder=var3622, r9=var2802, r0=var3877, null_type=var385, i0=var2612, i1=var2211, java.util.List=var1964, r2=var3070, com.google.gson.internal.sql.SqlTypesSupport=var1205, z0=var2216, com.google.gson.TypeAdapterFactory=var863, r10=var426, r11=var3858}
;seq 
;cnt {}
;stmts r9 := @this: com.google.gson.GsonBuilder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r2 := @parameter3: java.util.List;	z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES>;	r10 = null;	r11 = null;	if r0 == null goto (branch);	if i0 == 2 goto return;	if i1 == 2 goto return;	return
;block_num 4
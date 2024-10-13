(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var655 0)
(declare-sort var3064 0)
(declare-sort var2991 0)
(declare-sort var2569 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2991_checkNotNullParameter/-2060636419 (var2569 String) void)
(declare-fun cast-from-var3064-to-var2569 (var3064) var2569)
(declare-fun delete/-2107098179 (var655 var3064) void)
(declare-fun renameTo/1338128970 (var3064 var3064) Bool)
(declare-const null-var655 var655)
(declare-const null-var3064 var3064)
(declare-const var3813 var655) ; Statement: r2 := @this: okhttp3.internal.io.FileSystem$Companion$SystemFileSystem 
(assert (not (= var3813 null-var655)))
(declare-const var1468 var3064) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1468 null-var3064)))
(declare-const var431 var3064) ; Statement: r1 := @parameter1: java.io.File 
(assert (not (= var431 null-var3064)))
;(assert (var2991_checkNotNullParameter/-2060636419 (cast-from-var3064-to-var2569 var1468) "from")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "from") 

(declare-const var1468!1 var3064)
(declare-const var1086 String)
;(assert (var2991_checkNotNullParameter/-2060636419 (cast-from-var3064-to-var2569 var431) "to")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "to") 

(declare-const var431!1 var3064)
(declare-const var608 String)
(assert true)
;(assert (delete/-2107098179 var3813 var431!1)) ; Statement: virtualinvoke r2.<okhttp3.internal.io.FileSystem$Companion$SystemFileSystem: void delete(java.io.File)>(r1) 

(declare-const var3813!1 var655)
(declare-const var431!2 var3064)
(assert true)
(define-const var3999 Bool (renameTo/1338128970 var1468!1 var431!2)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean renameTo(java.io.File)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3999 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2991_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3064-to-var2569=([java.io.File], java.lang.Object), delete/-2107098179=([okhttp3.internal.io.FileSystem$Companion$SystemFileSystem, java.io.File], void), renameTo/1338128970=([java.io.File, java.io.File], boolean)}
; {var655=okhttp3.internal.io.FileSystem$Companion$SystemFileSystem, var3813=r2, var3064=java.io.File, var1468=r0, var431=r1, var2991=kotlin.jvm.internal.Intrinsics, var2569=java.lang.Object, var1086="from", var608="to", var3999=$z0}
; {okhttp3.internal.io.FileSystem$Companion$SystemFileSystem=var655, r2=var3813, java.io.File=var3064, r0=var1468, r1=var431, kotlin.jvm.internal.Intrinsics=var2991, java.lang.Object=var2569, "from"=var1086, "to"=var608, $z0=var3999}
;seq 
;cnt {}
;stmts r2 := @this: okhttp3.internal.io.FileSystem$Companion$SystemFileSystem;	r0 := @parameter0: java.io.File;	r1 := @parameter1: java.io.File;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "from");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "to");	virtualinvoke r2.<okhttp3.internal.io.FileSystem$Companion$SystemFileSystem: void delete(java.io.File)>(r1);	$z0 = virtualinvoke r0.<java.io.File: boolean renameTo(java.io.File)>(r1);	if $z0 != 0 goto return;	return
;block_num 2
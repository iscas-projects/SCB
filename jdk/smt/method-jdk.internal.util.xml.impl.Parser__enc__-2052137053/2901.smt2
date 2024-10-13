(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var229 0)
(declare-sort var402 0)
(declare-sort var1628 0)
(declare-sort var519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var519-init () var519)
(declare-fun <init>/481282620 (var519 var1628) void)
(declare-const null-var229 var229)
(declare-const null-String String)
(declare-const null-var1628 var1628)
(declare-const var3266 var229) ; Statement: r6 := @this: jdk.internal.util.xml.impl.Parser 
(assert (not (= var3266 null-var229)))
(declare-const var1331 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1331 null-String)))
(declare-const var2610 var1628) ; Statement: r2 := @parameter1: java.io.InputStream 
(assert (not (= var2610 null-var1628)))
(assert true)
(define-const var72 Bool (= var1331 "UTF-8")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("UTF-8") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("UTF-16LE") 
(assert (not (= (ite var72 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3743 var519 var519-init) ; Statement: $r5 = new jdk.internal.util.xml.impl.ReaderUTF8 
(assert true)
;(assert (<init>/481282620 var3743 var2610)) ; Statement: specialinvoke $r5.<jdk.internal.util.xml.impl.ReaderUTF8: void <init>(java.io.InputStream)>(r2) 

(declare-const var3743!1 var519)
(declare-const var2610!1 var1628)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var519-init=([], jdk.internal.util.xml.impl.ReaderUTF8), <init>/481282620=([jdk.internal.util.xml.impl.ReaderUTF8, java.io.InputStream], void)}
; {var229=jdk.internal.util.xml.impl.Parser, var3266=r6, var1331=r0, var402=null_type, var1628=java.io.InputStream, var2610=r2, var72=$z0, var519=jdk.internal.util.xml.impl.ReaderUTF8, var3743=$r5}
; {jdk.internal.util.xml.impl.Parser=var229, r6=var3266, r0=var1331, null_type=var402, java.io.InputStream=var1628, r2=var2610, $z0=var72, jdk.internal.util.xml.impl.ReaderUTF8=var519, $r5=var3743}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: jdk.internal.util.xml.impl.Parser;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.io.InputStream;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("UTF-8");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("UTF-16LE");	$r5 = new jdk.internal.util.xml.impl.ReaderUTF8;	specialinvoke $r5.<jdk.internal.util.xml.impl.ReaderUTF8: void <init>(java.io.InputStream)>(r2);	return $r5
;block_num 2
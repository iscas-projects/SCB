(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var214 0)
(declare-sort var1680 0)
(declare-sort var2144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var2144-init () var2144)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var2144 String) void)
(declare-const null-var214 var214)
(declare-const null-String String)
(declare-const var1227 var214) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer 
(assert (not (= var1227 null-var214)))
(declare-const var1625 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1625 null-String)))
(define-const var279 Int 0) ; Statement: i10 = 0 
(assert (not (and true (and (> (str.len var1625) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), var2144-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var214=org.apache.ibatis.javassist.bytecode.stackmap.Tracer, var1227=r1, var1625=r0, var1680=null_type, var279=i10, var197=$c0, var2385=$i13, var1406=$i8, var2144=java.lang.IndexOutOfBoundsException, var1349=$r19, var3980=$r18, var835=$r15, var779=$r16, var2800=$r17}
; {org.apache.ibatis.javassist.bytecode.stackmap.Tracer=var214, r1=var1227, r0=var1625, null_type=var1680, i10=var279, $c0=var197, $i13=var2385, $i8=var1406, java.lang.IndexOutOfBoundsException=var2144, $r19=var1349, $r18=var3980, $r15=var835, $r16=var779, $r17=var2800}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer;	r0 := @parameter0: java.lang.String;	i10 = 0;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i13 = (int) $c0;	if $i13 != 40 goto $r12 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes>;	$i8 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	i10 = $i8 + 1;	if i10 >= 1 goto $r12 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.Tracer: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes>;	$r19 = new java.lang.IndexOutOfBoundsException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad descriptor: ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r17);	throw $r19
;block_num 3
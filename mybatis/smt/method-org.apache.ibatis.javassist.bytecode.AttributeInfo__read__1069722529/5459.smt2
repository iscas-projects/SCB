(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var631 0)
(declare-sort var3371 0)
(declare-sort var815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readUnsignedShort/173878379 (var3371) Int)
(declare-fun getUtf8Info/465512870 (var631 Int) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var815-init () var815)
(declare-fun <init>/-413263987 (var815 var631 Int var3371) void)
(declare-const null-var631 var631)
(declare-const null-var3371 var3371)
(declare-const var3667 var631) ; Statement: r1 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var3667 null-var631)))
(declare-const var2958 var3371) ; Statement: r0 := @parameter1: java.io.DataInputStream 
(assert (not (= var2958 null-var3371)))
(assert true)
(define-const var888 Int (readUnsignedShort/173878379 var2958)) ; Statement: i0 = virtualinvoke r0.<java.io.DataInputStream: int readUnsignedShort()>() 
(assert true)
(define-const var950 String (getUtf8Info/465512870 var3667 var888)) ; Statement: r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getUtf8Info(int)>(i0) 
(assert (and true (and (> (str.len var950) 0) (<= 0 0))))
(define-const var2883 Int (charAt/698050440 var950 0)) ; Statement: c1 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0) 
(define-const var3365 Int (cast-from-Int-to-Int var2883)) ; Statement: $i2 = (int) c1 
 ; Statement: if $i2 >= 69 goto $i3 = (int) c1 
(assert (not (>= var3365 69))) ; Negate: Cond: $i2 >= 69  
(assert true)
(define-const var1504 Bool (= var950 "AnnotationDefault")) ; Statement: $z20 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("AnnotationDefault") 
 ; Statement: if $z20 == 0 goto $z21 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("BootstrapMethods") 
(assert (not (= (ite var1504 1 0) 0))) ; Negate: Cond: $z20 == 0  
(define-const var2842 var815 var815-init) ; Statement: $r26 = new org.apache.ibatis.javassist.bytecode.AnnotationDefaultAttribute 
(assert true)
;(assert (<init>/-413263987 var2842 var3667 var888 var2958)) ; Statement: specialinvoke $r26.<org.apache.ibatis.javassist.bytecode.AnnotationDefaultAttribute: void <init>(org.apache.ibatis.javassist.bytecode.ConstPool,int,java.io.DataInputStream)>(r1, i0, r0) 

(declare-const var2842!1 var815)
(declare-const var3667!1 var631)
(declare-const var888!1 Int)
(declare-const var2958!1 var3371)
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {readUnsignedShort/173878379=([java.io.DataInputStream], int), getUtf8Info/465512870=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var815-init=([], org.apache.ibatis.javassist.bytecode.AnnotationDefaultAttribute), <init>/-413263987=([org.apache.ibatis.javassist.bytecode.AnnotationDefaultAttribute, org.apache.ibatis.javassist.bytecode.ConstPool, int, java.io.DataInputStream], void)}
; {var631=org.apache.ibatis.javassist.bytecode.ConstPool, var3667=r1, var3371=java.io.DataInputStream, var2958=r0, var888=i0, var950=r2, var2883=c1, var3365=$i2, var1504=$z20, var815=org.apache.ibatis.javassist.bytecode.AnnotationDefaultAttribute, var2842=$r26}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var631, r1=var3667, java.io.DataInputStream=var3371, r0=var2958, i0=var888, r2=var950, c1=var2883, $i2=var3365, $z20=var1504, org.apache.ibatis.javassist.bytecode.AnnotationDefaultAttribute=var815, $r26=var2842}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	r0 := @parameter1: java.io.DataInputStream;	i0 = virtualinvoke r0.<java.io.DataInputStream: int readUnsignedShort()>();	r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getUtf8Info(int)>(i0);	c1 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0);	$i2 = (int) c1;	if $i2 >= 69 goto $i3 = (int) c1;	$z20 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("AnnotationDefault");	if $z20 == 0 goto $z21 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("BootstrapMethods");	$r26 = new org.apache.ibatis.javassist.bytecode.AnnotationDefaultAttribute;	specialinvoke $r26.<org.apache.ibatis.javassist.bytecode.AnnotationDefaultAttribute: void <init>(org.apache.ibatis.javassist.bytecode.ConstPool,int,java.io.DataInputStream)>(r1, i0, r0);	return $r26
;block_num 3
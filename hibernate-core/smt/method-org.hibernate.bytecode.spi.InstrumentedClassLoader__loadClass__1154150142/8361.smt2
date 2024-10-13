(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var155 0)
(declare-sort var3938 0)
(declare-sort var1819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getParent/1497717415 (var1819) var1819)
(declare-fun cast-from-var155-to-var1819 (var155) var1819)
(declare-fun loadClass/1140279053 (var1819 String) ClassObject)
(declare-const null-var155 var155)
(declare-const null-String String)
(declare-const var1615 var155) ; Statement: r1 := @this: org.hibernate.bytecode.spi.InstrumentedClassLoader 
(assert (not (= var1615 null-var155)))
(declare-const var1536 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1536 null-String)))
(assert true)
(define-const var1906 Bool (startsWith/-1785782452 var1536 "java.")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java.") 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r1.<org.hibernate.bytecode.spi.InstrumentedClassLoader: java.lang.ClassLoader getParent()>() 
(assert (not (= (ite var1906 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1203 var1819 (getParent/1497717415 (cast-from-var155-to-var1819 var1615))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.bytecode.spi.InstrumentedClassLoader: java.lang.ClassLoader getParent()>() 
(assert true)
(define-const var2307 ClassObject (loadClass/1140279053 var1203 var1536)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.ClassLoader: java.lang.Class loadClass(java.lang.String)>(r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getParent/1497717415=([java.lang.ClassLoader], java.lang.ClassLoader), cast-from-var155-to-var1819=([org.hibernate.bytecode.spi.InstrumentedClassLoader], java.lang.ClassLoader), loadClass/1140279053=([java.lang.ClassLoader, java.lang.String], java.lang.Class)}
; {var155=org.hibernate.bytecode.spi.InstrumentedClassLoader, var1615=r1, var1536=r0, var3938=null_type, var1906=$z0, var1819=java.lang.ClassLoader, var1203=$r2, var2307=$r3}
; {org.hibernate.bytecode.spi.InstrumentedClassLoader=var155, r1=var1615, r0=var1536, null_type=var3938, $z0=var1906, java.lang.ClassLoader=var1819, $r2=var1203, $r3=var2307}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.hibernate.bytecode.spi.InstrumentedClassLoader;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java.");	if $z0 != 0 goto $r2 = virtualinvoke r1.<org.hibernate.bytecode.spi.InstrumentedClassLoader: java.lang.ClassLoader getParent()>();	$r2 = virtualinvoke r1.<org.hibernate.bytecode.spi.InstrumentedClassLoader: java.lang.ClassLoader getParent()>();	$r3 = virtualinvoke $r2.<java.lang.ClassLoader: java.lang.Class loadClass(java.lang.String)>(r0);	return $r3
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var472 0)
(declare-sort var3230 0)
(declare-sort var2565 0)
(declare-sort var1166 0)
(declare-sort var3029 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun classPool/398000916 (var472) var2565)
(declare-fun var2565_describe/-1959134159 (var2565 String) var1166)
(declare-fun var1166_isResolved/-865328968 (var1166) Bool)
(declare-fun var1166_resolve/1711511653 (var1166) var3029)
(declare-const null-var472 var472)
(declare-const null-String String)
(declare-const var730 var472) ; Statement: r2 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer 
(assert (not (= var730 null-var472)))
(declare-const var2044 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2044 null-String)))
(assert true)
(define-const var1717 String (replace/1524665721 var2044 47 46)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(define-const var881 var2565 (classPool/398000916 var730)) ; Statement: $r3 = r2.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer: net.bytebuddy.pool.TypePool classPool> 
(define-const var2018 var1166 (var2565_describe/-1959134159 var881 var1717)) ; Statement: r4 = interfaceinvoke $r3.<net.bytebuddy.pool.TypePool: net.bytebuddy.pool.TypePool$Resolution describe(java.lang.String)>(r1) 
(define-const var238 Bool (var1166_isResolved/-865328968 var2018)) ; Statement: $z0 = interfaceinvoke r4.<net.bytebuddy.pool.TypePool$Resolution: boolean isResolved()>() 
 ; Statement: if $z0 != 0 goto $r5 = interfaceinvoke r4.<net.bytebuddy.pool.TypePool$Resolution: net.bytebuddy.description.type.TypeDescription resolve()>() 
(assert (not (= (ite var238 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3924 var3029 (var1166_resolve/1711511653 var2018)) ; Statement: $r5 = interfaceinvoke r4.<net.bytebuddy.pool.TypePool$Resolution: net.bytebuddy.description.type.TypeDescription resolve()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), classPool/398000916=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer], net.bytebuddy.pool.TypePool), var2565_describe/-1959134159=([net.bytebuddy.pool.TypePool, java.lang.String], net.bytebuddy.pool.TypePool$Resolution), var1166_isResolved/-865328968=([net.bytebuddy.pool.TypePool$Resolution], boolean), var1166_resolve/1711511653=([net.bytebuddy.pool.TypePool$Resolution], net.bytebuddy.description.type.TypeDescription)}
; {var472=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer, var730=r2, var2044=r0, var3230=null_type, var1717=r1, var2565=net.bytebuddy.pool.TypePool, var881=$r3, var1166=net.bytebuddy.pool.TypePool$Resolution, var2018=r4, var238=$z0, var3029=net.bytebuddy.description.type.TypeDescription, var3924=$r5}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer=var472, r2=var730, r0=var2044, null_type=var3230, r1=var1717, net.bytebuddy.pool.TypePool=var2565, $r3=var881, net.bytebuddy.pool.TypePool$Resolution=var1166, r4=var2018, $z0=var238, net.bytebuddy.description.type.TypeDescription=var3029, $r5=var3924}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r2 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r3 = r2.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldAccessEnhancer: net.bytebuddy.pool.TypePool classPool>;	r4 = interfaceinvoke $r3.<net.bytebuddy.pool.TypePool: net.bytebuddy.pool.TypePool$Resolution describe(java.lang.String)>(r1);	$z0 = interfaceinvoke r4.<net.bytebuddy.pool.TypePool$Resolution: boolean isResolved()>();	if $z0 != 0 goto $r5 = interfaceinvoke r4.<net.bytebuddy.pool.TypePool$Resolution: net.bytebuddy.description.type.TypeDescription resolve()>();	$r5 = interfaceinvoke r4.<net.bytebuddy.pool.TypePool$Resolution: net.bytebuddy.description.type.TypeDescription resolve()>();	return $r5
;block_num 2
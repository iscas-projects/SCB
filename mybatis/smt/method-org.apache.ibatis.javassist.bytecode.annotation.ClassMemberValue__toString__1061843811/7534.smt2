(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3674 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getValue/-1753983052 (var3674) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3674 var3674)
(declare-const var2441 var3674) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.annotation.ClassMemberValue 
(assert (not (= var2441 null-var3674)))
(define-const var638 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var638)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var638!1 String)
(assert (= var638!1 ""))
(assert true)
(define-const var1304 String (getValue/-1753983052 var2441)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.'annotation'.ClassMemberValue: java.lang.String getValue()>() 
(assert true)
(define-const var3349 String (replace/1524665721 var1304 36 46)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(36, 46) 
(assert true)
(define-const var1033 String (append/672562846 var638!1 var3349)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var638!2 String)
(assert (= var638!2 (str.++ var638!1 var3349)))
(assert true)
(define-const var3532 String (append/672562846 var1033 ".class")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var1033!1 String)
(assert (= var1033!1 (str.++ var1033 ".class")))
(assert true)
(define-const var3986 String (toString/-2075883882 var3532)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getValue/-1753983052=([org.apache.ibatis.javassist.bytecode.annotation.ClassMemberValue], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3674=org.apache.ibatis.javassist.bytecode.annotation.ClassMemberValue, var2441=r1, var638=$r0, var1304=$r2, var3349=$r3, var1033=$r4, var3532=$r5, var3986=$r6}
; {org.apache.ibatis.javassist.bytecode.annotation.ClassMemberValue=var3674, r1=var2441, $r0=var638, $r2=var1304, $r3=var3349, $r4=var1033, $r5=var3532, $r6=var3986}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.annotation.ClassMemberValue;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.'annotation'.ClassMemberValue: java.lang.String getValue()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(36, 46);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
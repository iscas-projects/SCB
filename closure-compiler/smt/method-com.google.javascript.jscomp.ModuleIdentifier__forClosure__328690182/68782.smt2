(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3746 0)
(declare-sort var1514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1514-init () var1514)
(declare-fun <init>/1012640669 (var1514 String String String) void)
(declare-const null-String String)
(declare-const var3199 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3199 null-String)))
(define-const var1401 String var3199) ; Statement: r3 = r0 
(assert true)
(define-const var734 Bool (startsWith/-1785782452 var3199 "goog:")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("goog:") 
 ; Statement: if $z0 == 0 goto r4 = r3 
(assert (= (ite var734 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3660 String var1401) ; Statement: r4 = r3 
(define-const var3673 String var1401) ; Statement: r5 = r3 
(assert true)
(define-const var2620 Int (indexOf/-1037706067 var1401 58)) ; Statement: $i5 = virtualinvoke r3.<java.lang.String: int indexOf(int)>(58) 
(define-const var1920 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i5 == $i7 goto $r6 = new com.google.javascript.jscomp.AutoValue_ModuleIdentifier 
(assert (= var2620 var1920)) ; Cond: $i5 == $i7 
(define-const var428 var1514 var1514-init) ; Statement: $r6 = new com.google.javascript.jscomp.AutoValue_ModuleIdentifier 
(assert true)
;(assert (<init>/1012640669 var428 var1401 var3660 var3673)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.AutoValue_ModuleIdentifier: void <init>(java.lang.String,java.lang.String,java.lang.String)>(r3, r4, r5) 

(declare-const var428!1 var1514)
(declare-const var1401!1 String)
(declare-const var3660!1 String)
(declare-const var3673!1 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var1514-init=([], com.google.javascript.jscomp.AutoValue_ModuleIdentifier), <init>/1012640669=([com.google.javascript.jscomp.AutoValue_ModuleIdentifier, java.lang.String, java.lang.String, java.lang.String], void)}
; {var3199=r0, var3746=null_type, var1401=r3, var734=$z0, var3660=r4, var3673=r5, var2620=$i5, var1920=$i7, var1514=com.google.javascript.jscomp.AutoValue_ModuleIdentifier, var428=$r6}
; {r0=var3199, null_type=var3746, r3=var1401, $z0=var734, r4=var3660, r5=var3673, $i5=var2620, $i7=var1920, com.google.javascript.jscomp.AutoValue_ModuleIdentifier=var1514, $r6=var428}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 = r0;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("goog:");	if $z0 == 0 goto r4 = r3;	r4 = r3;	r5 = r3;	$i5 = virtualinvoke r3.<java.lang.String: int indexOf(int)>(58);	$i7 = (int) -1;	if $i5 == $i7 goto $r6 = new com.google.javascript.jscomp.AutoValue_ModuleIdentifier;	$r6 = new com.google.javascript.jscomp.AutoValue_ModuleIdentifier;	specialinvoke $r6.<com.google.javascript.jscomp.AutoValue_ModuleIdentifier: void <init>(java.lang.String,java.lang.String,java.lang.String)>(r3, r4, r5);	return $r6
;block_num 3
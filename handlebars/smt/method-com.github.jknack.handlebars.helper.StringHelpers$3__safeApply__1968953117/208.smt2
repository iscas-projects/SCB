(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3485 0)
(declare-sort var2956 0)
(declare-sort var2716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isFalsy/126419145 (var2716 var2956) Bool)
(declare-fun param/622138271 (var2716 Int var2956) var2956)
(declare-fun cast-from-String-to-var2956 (String) var2956)
(declare-fun cast-from-var2956-to-String (var2956) String)
(declare-fun toString/-522406933 (var2956) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var3485 var3485)
(declare-const null-var2956 var2956)
(declare-const null-var2716 var2716)
(declare-const var1160 var3485) ; Statement: r6 := @this: com.github.jknack.handlebars.helper.StringHelpers$3 
(assert (not (= var1160 null-var3485)))
(declare-const var679 var2956) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var679 null-var2956)))
(declare-const var2391 var2716) ; Statement: r0 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var2391 null-var2716)))
(assert true)
(define-const var731 Bool (isFalsy/126419145 var2391 var679)) ; Statement: $z0 = virtualinvoke r0.<com.github.jknack.handlebars.Options: boolean isFalsy(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<com.github.jknack.handlebars.Options: java.lang.Object param(int,java.lang.Object)>(0, " ") 
(assert (= (ite var731 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2004 var2956 (param/622138271 var2391 0 (cast-from-String-to-var2956 " "))) ; Statement: $r2 = virtualinvoke r0.<com.github.jknack.handlebars.Options: java.lang.Object param(int,java.lang.Object)>(0, " ") 
(define-const var1080 String (cast-from-var2956-to-String var2004)) ; Statement: r3 = (java.lang.String) $r2 
(assert true)
(define-const var697 String (toString/-522406933 var679)) ; Statement: $r4 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1872 String (replace/2138489945 var697 (cast-from-String-to-String var1080) (cast-from-String-to-String ""))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r3, "") 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {isFalsy/126419145=([com.github.jknack.handlebars.Options, java.lang.Object], boolean), param/622138271=([com.github.jknack.handlebars.Options, int, java.lang.Object], java.lang.Object), cast-from-String-to-var2956=([java.lang.String], java.lang.Object), cast-from-var2956-to-String=([java.lang.Object], java.lang.String), toString/-522406933=([java.lang.Object], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3485=com.github.jknack.handlebars.helper.StringHelpers$3, var1160=r6, var2956=java.lang.Object, var679=r1, var2716=com.github.jknack.handlebars.Options, var2391=r0, var731=$z0, var2004=$r2, var1080=r3, var697=$r4, var1872=$r5}
; {com.github.jknack.handlebars.helper.StringHelpers$3=var3485, r6=var1160, java.lang.Object=var2956, r1=var679, com.github.jknack.handlebars.Options=var2716, r0=var2391, $z0=var731, $r2=var2004, r3=var1080, $r4=var697, $r5=var1872}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r6 := @this: com.github.jknack.handlebars.helper.StringHelpers$3;	r1 := @parameter0: java.lang.Object;	r0 := @parameter1: com.github.jknack.handlebars.Options;	$z0 = virtualinvoke r0.<com.github.jknack.handlebars.Options: boolean isFalsy(java.lang.Object)>(r1);	if $z0 == 0 goto $r2 = virtualinvoke r0.<com.github.jknack.handlebars.Options: java.lang.Object param(int,java.lang.Object)>(0, " ");	$r2 = virtualinvoke r0.<com.github.jknack.handlebars.Options: java.lang.Object param(int,java.lang.Object)>(0, " ");	r3 = (java.lang.String) $r2;	$r4 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r3, "");	return $r5
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var161 0)
(declare-sort var3970 0)
(declare-sort var620 0)
(declare-sort var1543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun param/622138271 (var620 Int var3970) var3970)
(declare-fun cast-from-var3970-to-String (var3970) String)
(declare-fun toString/-522406933 (var3970) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var161 var161)
(declare-const null-var3970 var3970)
(declare-const null-var620 var620)
(declare-const null-NullType var1543)
(declare-const var2089 var161) ; Statement: r8 := @this: com.github.jknack.handlebars.helper.StringHelpers$17 
(assert (not (= var2089 null-var161)))
(declare-const var2432 var3970) ; Statement: r5 := @parameter0: java.lang.Object 
(assert (not (= var2432 null-var3970)))
(declare-const var1082 var620) ; Statement: r0 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var1082 null-var620)))
(assert true)
(define-const var3747 var3970 (param/622138271 var1082 0 null-var3970)) ; Statement: $r1 = virtualinvoke r0.<com.github.jknack.handlebars.Options: java.lang.Object param(int,java.lang.Object)>(0, null) 
(define-const var156 String (cast-from-var3970-to-String var3747)) ; Statement: r2 = (java.lang.String) $r1 
(assert true)
(define-const var1561 var3970 (param/622138271 var1082 1 null-var3970)) ; Statement: $r3 = virtualinvoke r0.<com.github.jknack.handlebars.Options: java.lang.Object param(int,java.lang.Object)>(1, null) 
(define-const var551 String (cast-from-var3970-to-String var1561)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var1419 String (toString/-522406933 var2432)) ; Statement: $r6 = virtualinvoke r5.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2655 String (replace/2138489945 var1419 (cast-from-String-to-String var156) (cast-from-String-to-String var551))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r2, r4) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {param/622138271=([com.github.jknack.handlebars.Options, int, java.lang.Object], java.lang.Object), cast-from-var3970-to-String=([java.lang.Object], java.lang.String), toString/-522406933=([java.lang.Object], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var161=com.github.jknack.handlebars.helper.StringHelpers$17, var2089=r8, var3970=java.lang.Object, var2432=r5, var620=com.github.jknack.handlebars.Options, var1082=r0, var3747=$r1, var156=r2, var1561=$r3, var551=r4, var1419=$r6, var2655=$r7, var1543=null_type}
; {com.github.jknack.handlebars.helper.StringHelpers$17=var161, r8=var2089, java.lang.Object=var3970, r5=var2432, com.github.jknack.handlebars.Options=var620, r0=var1082, $r1=var3747, r2=var156, $r3=var1561, r4=var551, $r6=var1419, $r7=var2655, null_type=var1543}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.helper.StringHelpers$17;	r5 := @parameter0: java.lang.Object;	r0 := @parameter1: com.github.jknack.handlebars.Options;	$r1 = virtualinvoke r0.<com.github.jknack.handlebars.Options: java.lang.Object param(int,java.lang.Object)>(0, null);	r2 = (java.lang.String) $r1;	$r3 = virtualinvoke r0.<com.github.jknack.handlebars.Options: java.lang.Object param(int,java.lang.Object)>(1, null);	r4 = (java.lang.String) $r3;	$r6 = virtualinvoke r5.<java.lang.Object: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r2, r4);	return $r7
;block_num 1
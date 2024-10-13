(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1226 0)
(declare-sort var3875 0)
(declare-sort var1429 0)
(declare-sort var1156 0)
(declare-sort var3518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-2086011988 (var1226) var1429)
(declare-fun checkMethodArgCount/-207621435 (var1156 var3875 Int Int) void)
(declare-fun cast-from-var1429-to-var1156 (var1429) var1156)
(declare-fun getStringMethodArg/-1432244773 (var1156 var3875 Int) String)
(declare-fun var3875_size/-959786421 (var3875) Int)
(declare-fun s/-2086011988 (var1226) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3518-init () var3518)
(declare-fun <init>/378607920 (var3518 String) void)
(declare-const null-var1226 var1226)
(declare-const null-var3875 var3875)
(declare-const var340 var1226) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod 
(assert (not (= var340 null-var1226)))
(declare-const var1272 var3875) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var1272 null-var3875)))
(define-const var1554 var1429 (this$0/-2086011988 var340)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-207621435 (cast-from-var1429-to-var1156 var1554) var1272 1 3)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI: void checkMethodArgCount(java.util.List,int,int)>(r1, 1, 3) 

(declare-const var1554!1 var1429)
(declare-const var1272!1 var3875)
(declare-const var1989 Int)
(declare-const var2269 Int)
(define-const var757 var1429 (this$0/-2086011988 var340)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI this$0> 
(assert true)
(define-const var1133 String (getStringMethodArg/-1432244773 (cast-from-var1429-to-var1156 var757) var1272!1 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(define-const var890 Int (var3875_size/-959786421 var1272!1)) ; Statement: $i0 = interfaceinvoke r1.<java.util.List: int size()>() 
 ; Statement: if $i0 <= 1 goto $r5 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: java.lang.String s> 
(assert (<= var890 1)) ; Cond: $i0 <= 1 
(define-const var2097 String (s/-2086011988 var340)) ; Statement: $r5 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var388 Bool (startsWith/-1785782452 var2097 var1133)) ; Statement: z0 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
(define-const var1567 String var1133) ; Statement: r23 = r4 
(assert true) ; Non Conditional
(define-const var2373 var3518 var3518-init) ; Statement: $r6 = new freemarker.template.SimpleScalar 
 ; Statement: if z0 == 0 goto $r7 = new java.lang.StringBuilder 
(assert (not (= (ite var388 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3905 String (s/-2086011988 var340)) ; Statement: $r24 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: java.lang.String s> 
 ; Statement: goto [?= specialinvoke $r6.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r24)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/378607920 var2373 var3905)) ; Statement: specialinvoke $r6.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r24) 

(declare-const var2373!1 var3518)
(declare-const var3905!1 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-2086011988=([freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI), checkMethodArgCount/-207621435=([freemarker.core.BuiltIn, java.util.List, int, int], void), cast-from-var1429-to-var1156=([freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var3875_size/-959786421=([java.util.List], int), s/-2086011988=([freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3518-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var1226=freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod, var340=r0, var3875=java.util.List, var1272=r1, var1429=freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI, var1554=$r2, var1156=freemarker.core.BuiltIn, var1989=1, var2269=3, var757=$r3, var1133=r4, var890=$i0, var2097=$r5, var388=z0, var1567=r23, var3518=freemarker.template.SimpleScalar, var2373=$r6, var3905=$r24}
; {freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod=var1226, r0=var340, java.util.List=var3875, r1=var1272, freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI=var1429, $r2=var1554, freemarker.core.BuiltIn=var1156, 1=var1989, 3=var2269, $r3=var757, r4=var1133, $i0=var890, $r5=var2097, z0=var388, r23=var1567, freemarker.template.SimpleScalar=var3518, $r6=var2373, $r24=var3905}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI: void checkMethodArgCount(java.util.List,int,int)>(r1, 1, 3);	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$i0 = interfaceinvoke r1.<java.util.List: int size()>();	if $i0 <= 1 goto $r5 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: java.lang.String s>;	$r5 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: java.lang.String s>;	z0 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	r23 = r4;	$r6 = new freemarker.template.SimpleScalar;	if z0 == 0 goto $r7 = new java.lang.StringBuilder;	$r24 = r0.<freemarker.core.BuiltInsForStringsBasic$ensure_starts_withBI$BIMethod: java.lang.String s>;	goto [?= specialinvoke $r6.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r24)];	specialinvoke $r6.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r24);	return $r6
;block_num 5
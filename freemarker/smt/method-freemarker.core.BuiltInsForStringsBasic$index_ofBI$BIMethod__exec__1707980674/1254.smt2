(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1846 0)
(declare-sort var1409 0)
(declare-sort var1052 0)
(declare-sort var3057 0)
(declare-sort var575 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1409_size/-959786421 (var1409) Int)
(declare-fun this$0/974505115 (var1846) var1052)
(declare-fun checkMethodArgCount/509013054 (var3057 Int Int Int) void)
(declare-fun cast-from-var1052-to-var3057 (var1052) var3057)
(declare-fun getStringMethodArg/-1432244773 (var3057 var1409 Int) String)
(declare-fun var575-init () var575)
(declare-fun var1052_access$400/-1326169297 (var1052) Bool)
(declare-fun s/974505115 (var1846) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun <init>/-1657349039 (var575 Int) void)
(declare-const null-var1846 var1846)
(declare-const null-var1409 var1409)
(declare-const var2650 var1846) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod 
(assert (not (= var2650 null-var1846)))
(declare-const var2077 var1409) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2077 null-var1409)))
(define-const var1148 Int (var1409_size/-959786421 var2077)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var1493 var1052 (this$0/974505115 var2650)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var1052-to-var3057 var1493) var1148 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var1493!1 var1052)
(declare-const var1148!1 Int)
(declare-const var951 Int)
(declare-const var2367 Int)
(define-const var123 var1052 (this$0/974505115 var2650)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(assert true)
(define-const var3604 String (getStringMethodArg/-1432244773 (cast-from-var1052-to-var3057 var123) var2077 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $r5 = new freemarker.template.SimpleNumber 
(assert (<= var1148!1 1)) ; Cond: i0 <= 1 
(define-const var1405 var575 var575-init) ; Statement: $r5 = new freemarker.template.SimpleNumber 
(define-const var3555 var1052 (this$0/974505115 var2650)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(define-const var2932 Bool (var1052_access$400/-1326169297 var3555)) ; Statement: $z0 = staticinvoke <freemarker.core.BuiltInsForStringsBasic$index_ofBI: boolean access$400(freemarker.core.BuiltInsForStringsBasic$index_ofBI)>($r6) 
 ; Statement: if $z0 == 0 goto $r7 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s> 
(assert (not (= (ite var2932 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var264 String (s/974505115 var2650)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var3586 Int (lastIndexOf/-618837785 var264 var3604)) ; Statement: $i3 = virtualinvoke $r8.<java.lang.String: int lastIndexOf(java.lang.String)>(r4) 
 ; Statement: goto [?= specialinvoke $r5.<freemarker.template.SimpleNumber: void <init>(int)>($i3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1657349039 var1405 var3586)) ; Statement: specialinvoke $r5.<freemarker.template.SimpleNumber: void <init>(int)>($i3) 

(declare-const var1405!1 var575)
(declare-const var3586!1 Int)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1409_size/-959786421=([java.util.List], int), this$0/974505115=([freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$index_ofBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var1052-to-var3057=([freemarker.core.BuiltInsForStringsBasic$index_ofBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var575-init=([], freemarker.template.SimpleNumber), var1052_access$400/-1326169297=([freemarker.core.BuiltInsForStringsBasic$index_ofBI], boolean), s/974505115=([freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), <init>/-1657349039=([freemarker.template.SimpleNumber, int], void)}
; {var1846=freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod, var2650=r1, var1409=java.util.List, var2077=r0, var1148=i0, var1052=freemarker.core.BuiltInsForStringsBasic$index_ofBI, var1493=$r2, var3057=freemarker.core.BuiltIn, var951=1, var2367=2, var123=$r3, var3604=r4, var575=freemarker.template.SimpleNumber, var1405=$r5, var3555=$r6, var2932=$z0, var264=$r8, var3586=$i3}
; {freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod=var1846, r1=var2650, java.util.List=var1409, r0=var2077, i0=var1148, freemarker.core.BuiltInsForStringsBasic$index_ofBI=var1052, $r2=var1493, freemarker.core.BuiltIn=var3057, 1=var951, 2=var2367, $r3=var123, r4=var3604, freemarker.template.SimpleNumber=var575, $r5=var1405, $r6=var3555, $z0=var2932, $r8=var264, $i3=var3586}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $r5 = new freemarker.template.SimpleNumber;	$r5 = new freemarker.template.SimpleNumber;	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	$z0 = staticinvoke <freemarker.core.BuiltInsForStringsBasic$index_ofBI: boolean access$400(freemarker.core.BuiltInsForStringsBasic$index_ofBI)>($r6);	if $z0 == 0 goto $r7 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s>;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s>;	$i3 = virtualinvoke $r8.<java.lang.String: int lastIndexOf(java.lang.String)>(r4);	goto [?= specialinvoke $r5.<freemarker.template.SimpleNumber: void <init>(int)>($i3)];	specialinvoke $r5.<freemarker.template.SimpleNumber: void <init>(int)>($i3);	return $r5
;block_num 4
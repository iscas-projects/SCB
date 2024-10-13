(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3900 0)
(declare-sort var607 0)
(declare-sort var1748 0)
(declare-sort var1327 0)
(declare-sort var318 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var607_size/-959786421 (var607) Int)
(declare-fun this$0/974505115 (var3900) var1748)
(declare-fun checkMethodArgCount/509013054 (var1327 Int Int Int) void)
(declare-fun cast-from-var1748-to-var1327 (var1748) var1327)
(declare-fun getStringMethodArg/-1432244773 (var1327 var607 Int) String)
(declare-fun var318-init () var318)
(declare-fun var1748_access$400/-1326169297 (var1748) Bool)
(declare-fun s/974505115 (var3900) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun <init>/-1657349039 (var318 Int) void)
(declare-const null-var3900 var3900)
(declare-const null-var607 var607)
(declare-const var195 var3900) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod 
(assert (not (= var195 null-var3900)))
(declare-const var2575 var607) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2575 null-var607)))
(define-const var678 Int (var607_size/-959786421 var2575)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var866 var1748 (this$0/974505115 var195)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var1748-to-var1327 var866) var678 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var866!1 var1748)
(declare-const var678!1 Int)
(declare-const var3630 Int)
(declare-const var623 Int)
(define-const var146 var1748 (this$0/974505115 var195)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(assert true)
(define-const var1553 String (getStringMethodArg/-1432244773 (cast-from-var1748-to-var1327 var146) var2575 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $r5 = new freemarker.template.SimpleNumber 
(assert (<= var678!1 1)) ; Cond: i0 <= 1 
(define-const var3216 var318 var318-init) ; Statement: $r5 = new freemarker.template.SimpleNumber 
(define-const var50 var1748 (this$0/974505115 var195)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0> 
(define-const var233 Bool (var1748_access$400/-1326169297 var50)) ; Statement: $z0 = staticinvoke <freemarker.core.BuiltInsForStringsBasic$index_ofBI: boolean access$400(freemarker.core.BuiltInsForStringsBasic$index_ofBI)>($r6) 
 ; Statement: if $z0 == 0 goto $r7 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s> 
(assert (= (ite var233 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3453 String (s/974505115 var195)) ; Statement: $r7 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var686 Int (indexOf/-1209756239 var3453 var1553)) ; Statement: $i3 = virtualinvoke $r7.<java.lang.String: int indexOf(java.lang.String)>(r4) 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1657349039 var3216 var686)) ; Statement: specialinvoke $r5.<freemarker.template.SimpleNumber: void <init>(int)>($i3) 

(declare-const var3216!1 var318)
(declare-const var686!1 Int)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var607_size/-959786421=([java.util.List], int), this$0/974505115=([freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$index_ofBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var1748-to-var1327=([freemarker.core.BuiltInsForStringsBasic$index_ofBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var318-init=([], freemarker.template.SimpleNumber), var1748_access$400/-1326169297=([freemarker.core.BuiltInsForStringsBasic$index_ofBI], boolean), s/974505115=([freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), <init>/-1657349039=([freemarker.template.SimpleNumber, int], void)}
; {var3900=freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod, var195=r1, var607=java.util.List, var2575=r0, var678=i0, var1748=freemarker.core.BuiltInsForStringsBasic$index_ofBI, var866=$r2, var1327=freemarker.core.BuiltIn, var3630=1, var623=2, var146=$r3, var1553=r4, var318=freemarker.template.SimpleNumber, var3216=$r5, var50=$r6, var233=$z0, var3453=$r7, var686=$i3}
; {freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod=var3900, r1=var195, java.util.List=var607, r0=var2575, i0=var678, freemarker.core.BuiltInsForStringsBasic$index_ofBI=var1748, $r2=var866, freemarker.core.BuiltIn=var1327, 1=var3630, 2=var623, $r3=var146, r4=var1553, freemarker.template.SimpleNumber=var318, $r5=var3216, $r6=var50, $z0=var233, $r7=var3453, $i3=var686}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$index_ofBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $r5 = new freemarker.template.SimpleNumber;	$r5 = new freemarker.template.SimpleNumber;	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$index_ofBI this$0>;	$z0 = staticinvoke <freemarker.core.BuiltInsForStringsBasic$index_ofBI: boolean access$400(freemarker.core.BuiltInsForStringsBasic$index_ofBI)>($r6);	if $z0 == 0 goto $r7 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s>;	$r7 = r1.<freemarker.core.BuiltInsForStringsBasic$index_ofBI$BIMethod: java.lang.String s>;	$i3 = virtualinvoke $r7.<java.lang.String: int indexOf(java.lang.String)>(r4);	specialinvoke $r5.<freemarker.template.SimpleNumber: void <init>(int)>($i3);	return $r5
;block_num 4
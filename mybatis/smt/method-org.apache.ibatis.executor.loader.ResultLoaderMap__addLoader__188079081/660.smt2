(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3623 0)
(declare-sort var778 0)
(declare-sort var985 0)
(declare-sort var916 0)
(declare-sort var1122 0)
(declare-sort var536 0)
(declare-sort var1365 0)
(declare-sort var2069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3623_getUppercaseFirstProperty/1521258720 (String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun loaderMap/-1825562998 (var3623) var1122)
(declare-fun var536-init () var536)
(declare-fun <init>/910637786 (var536 String var985 var916 var1365) void)
(declare-fun var1122_put/1464166817 (var1122 var2069 var2069) var2069)
(declare-fun cast-from-String-to-var2069 (String) var2069)
(declare-fun cast-from-var536-to-var2069 (var536) var2069)
(declare-const null-var3623 var3623)
(declare-const null-String String)
(declare-const null-var985 var985)
(declare-const null-var916 var916)
(declare-const null-NullType var778)
(declare-const null-var1365 var1365)
(declare-const var1163 var3623) ; Statement: r2 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap 
(assert (not (= var1163 null-var3623)))
(declare-const var3875 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3875 null-String)))
(declare-const var2752 var985) ; Statement: r4 := @parameter1: org.apache.ibatis.reflection.MetaObject 
(assert (not (= var2752 null-var985)))
(declare-const var2726 var916) ; Statement: r5 := @parameter2: org.apache.ibatis.executor.loader.ResultLoader 
(assert (not (= var2726 null-var916)))
(define-const var786 String (var3623_getUppercaseFirstProperty/1521258720 var3875)) ; Statement: r1 = staticinvoke <org.apache.ibatis.executor.loader.ResultLoaderMap: java.lang.String getUppercaseFirstProperty(java.lang.String)>(r0) 
(assert true)
(define-const var3171 Bool (equalsIgnoreCase/-92311102 var786 var3875)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 != 0 goto $r6 = r2.<org.apache.ibatis.executor.loader.ResultLoaderMap: java.util.Map loaderMap> 
(assert (not (= (ite var3171 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1426 var1122 (loaderMap/-1825562998 var1163)) ; Statement: $r6 = r2.<org.apache.ibatis.executor.loader.ResultLoaderMap: java.util.Map loaderMap> 
(define-const var1877 var536 var536-init) ; Statement: $r3 = new org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair 
(assert true)
;(assert (<init>/910637786 var1877 var3875 var2752 var2726 null-var1365)) ; Statement: specialinvoke $r3.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: void <init>(java.lang.String,org.apache.ibatis.reflection.MetaObject,org.apache.ibatis.executor.loader.ResultLoader,org.apache.ibatis.executor.loader.ResultLoaderMap$1)>(r0, r4, r5, null) 

(declare-const var1877!1 var536)
(declare-const var3875!1 String)
(declare-const var2752!1 var985)
(declare-const var2726!1 var916)
(declare-const var2869 var778)
;(assert (var1122_put/1464166817 var1426 (cast-from-String-to-var2069 var786) (cast-from-var536-to-var2069 var1877!1))) ; Statement: interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r3) 

(declare-const var1426!1 var1122)
(declare-const var786!1 String)
(declare-const var1877!2 var536)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3623_getUppercaseFirstProperty/1521258720=([java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), loaderMap/-1825562998=([org.apache.ibatis.executor.loader.ResultLoaderMap], java.util.Map), var536-init=([], org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair), <init>/910637786=([org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair, java.lang.String, org.apache.ibatis.reflection.MetaObject, org.apache.ibatis.executor.loader.ResultLoader, org.apache.ibatis.executor.loader.ResultLoaderMap$1], void), var1122_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2069=([java.lang.String], java.lang.Object), cast-from-var536-to-var2069=([org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair], java.lang.Object)}
; {var3623=org.apache.ibatis.executor.loader.ResultLoaderMap, var1163=r2, var3875=r0, var778=null_type, var985=org.apache.ibatis.reflection.MetaObject, var2752=r4, var916=org.apache.ibatis.executor.loader.ResultLoader, var2726=r5, var786=r1, var3171=$z0, var1122=java.util.Map, var1426=$r6, var536=org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair, var1877=$r3, var1365=org.apache.ibatis.executor.loader.ResultLoaderMap$1, var2869=null, var2069=java.lang.Object}
; {org.apache.ibatis.executor.loader.ResultLoaderMap=var3623, r2=var1163, r0=var3875, null_type=var778, org.apache.ibatis.reflection.MetaObject=var985, r4=var2752, org.apache.ibatis.executor.loader.ResultLoader=var916, r5=var2726, r1=var786, $z0=var3171, java.util.Map=var1122, $r6=var1426, org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair=var536, $r3=var1877, org.apache.ibatis.executor.loader.ResultLoaderMap$1=var1365, null=var2869, java.lang.Object=var2069}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: org.apache.ibatis.reflection.MetaObject;	r5 := @parameter2: org.apache.ibatis.executor.loader.ResultLoader;	r1 = staticinvoke <org.apache.ibatis.executor.loader.ResultLoaderMap: java.lang.String getUppercaseFirstProperty(java.lang.String)>(r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 != 0 goto $r6 = r2.<org.apache.ibatis.executor.loader.ResultLoaderMap: java.util.Map loaderMap>;	$r6 = r2.<org.apache.ibatis.executor.loader.ResultLoaderMap: java.util.Map loaderMap>;	$r3 = new org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair;	specialinvoke $r3.<org.apache.ibatis.executor.loader.ResultLoaderMap$LoadPair: void <init>(java.lang.String,org.apache.ibatis.reflection.MetaObject,org.apache.ibatis.executor.loader.ResultLoader,org.apache.ibatis.executor.loader.ResultLoaderMap$1)>(r0, r4, r5, null);	interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r3);	return
;block_num 2
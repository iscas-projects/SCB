(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2166 0)
(declare-sort var490 0)
(declare-sort var2388 0)
(declare-sort var173 0)
(declare-sort var3016 0)
(declare-sort var2544 0)
(declare-sort var1675 0)
(declare-sort var366 0)
(declare-sort var2562 0)
(declare-sort var2611 0)
(declare-sort var2953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var490!class ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var2388-init () var2388)
(declare-fun getClass/1258963082 (var173) ClassObject)
(declare-fun cast-from-var2166-to-var173 (var2166) var173)
(declare-fun <init>/-1043736733 (var2388 String String String) void)
(declare-fun var2544-init () var2544)
(declare-fun getKeyName/-200443258 (var1675) String)
(declare-fun getUser/-1474577429 (var2166) String)
(declare-fun <init>/1082918192 (var2544 String String) void)
(declare-fun add/1685322367 (var2388 var366) void)
(declare-fun cast-from-var2544-to-var366 (var2544) var366)
(declare-fun password/-1947772990 (var2166) String)
(declare-fun getServerName/-1440862808 (var2166) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPort/320255875 (var2166) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun explicitPort/-1947772990 (var2166) Bool)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-fun getDatabaseName/-1233690064 (var2166) String)
(declare-fun getUrl/-1295279051 (var2166) String)
(declare-fun explicitUrl/-1947772990 (var2166) Bool)
(declare-fun var2562_keySet/-712633290 (var2562) var2953)
(declare-fun var2953_iterator/1911472585 (var2953) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2166 var2166)
(declare-const null-NullType var3016)
(declare-const null-String String)
(declare-const var1675-USER var1675)
(declare-const var1675-PASSWORD var1675)
(declare-const var2611-PROPERTY_KEY_TO_PROPERTY_DEFINITION var2562)
(declare-const var38 var2166) ; Statement: r3 := @this: com.mysql.cj.jdbc.MysqlDataSource 
(assert (not (= var38 null-var2166)))
(define-const var3452 ClassObject var490!class) ; Statement: $r0 = class "Lcom/mysql/cj/jdbc/MysqlDataSourceFactory;" 
(assert true)
(define-const var3870 String (getName/-1958580599 var3452)) ; Statement: r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>() 
(define-const var559 var2388 var2388-init) ; Statement: $r2 = new javax.naming.Reference 
(assert true)
(define-const var384 ClassObject (getClass/1258963082 (cast-from-var2166-to-var173 var38))) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var914 String (getName/-1958580599 var384)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1043736733 var559 var914 var3870 null-String)) ; Statement: specialinvoke $r2.<javax.naming.Reference: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r5, r1, null) 

(declare-const var559!1 var2388)
(declare-const var914!1 String)
(declare-const var3870!1 String)
(declare-const var1161 var3016)
(define-const var3721 var2544 var2544-init) ; Statement: $r6 = new javax.naming.StringRefAddr 
(define-const var532 var1675 var1675-USER) ; Statement: $r7 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey USER> 
(assert true)
(define-const var1887 String (getKeyName/-200443258 var532)) ; Statement: $r9 = virtualinvoke $r7.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(assert true)
(define-const var238 String (getUser/-1474577429 var38)) ; Statement: $r8 = virtualinvoke r3.<com.mysql.cj.jdbc.MysqlDataSource: java.lang.String getUser()>() 
(assert true)
;(assert (<init>/1082918192 var3721 var1887 var238)) ; Statement: specialinvoke $r6.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>($r9, $r8) 

(declare-const var3721!1 var2544)
(declare-const var1887!1 String)
(declare-const var238!1 String)
(assert true)
;(assert (add/1685322367 var559!1 (cast-from-var2544-to-var366 var3721!1))) ; Statement: virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r6) 

(declare-const var559!2 var2388)
(declare-const var3721!2 var2544)
(define-const var2779 var2544 var2544-init) ; Statement: $r10 = new javax.naming.StringRefAddr 
(define-const var3715 var1675 var1675-PASSWORD) ; Statement: $r11 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey PASSWORD> 
(assert true)
(define-const var3487 String (getKeyName/-200443258 var3715)) ; Statement: $r13 = virtualinvoke $r11.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(define-const var2844 String (password/-1947772990 var38)) ; Statement: $r12 = r3.<com.mysql.cj.jdbc.MysqlDataSource: java.lang.String password> 
(assert true)
;(assert (<init>/1082918192 var2779 var3487 var2844)) ; Statement: specialinvoke $r10.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>($r13, $r12) 

(declare-const var2779!1 var2544)
(declare-const var3487!1 String)
(declare-const var2844!1 String)
(assert true)
;(assert (add/1685322367 var559!2 (cast-from-var2544-to-var366 var2779!1))) ; Statement: virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r10) 

(declare-const var559!3 var2388)
(declare-const var2779!2 var2544)
(define-const var3451 var2544 var2544-init) ; Statement: $r14 = new javax.naming.StringRefAddr 
(assert true)
(define-const var1677 String (getServerName/-1440862808 var38)) ; Statement: $r15 = virtualinvoke r3.<com.mysql.cj.jdbc.MysqlDataSource: java.lang.String getServerName()>() 
(assert true)
;(assert (<init>/1082918192 var3451 "serverName" var1677)) ; Statement: specialinvoke $r14.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>("serverName", $r15) 

(declare-const var3451!1 var2544)
(declare-const var2471 String)
(declare-const var1677!1 String)
(assert true)
;(assert (add/1685322367 var559!3 (cast-from-var2544-to-var366 var3451!1))) ; Statement: virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r14) 

(declare-const var559!4 var2388)
(declare-const var3451!2 var2544)
(define-const var1639 var2544 var2544-init) ; Statement: $r16 = new javax.naming.StringRefAddr 
(define-const var888 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var888)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var888!1 String)
(assert (= var888!1 ""))
(assert true)
(define-const var1447 String (append/672562846 var888!1 "")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var888!2 String)
(assert (= var888!2 (str.++ var888!1 "")))
(assert true)
(define-const var1372 Int (getPort/320255875 var38)) ; Statement: $i0 = virtualinvoke r3.<com.mysql.cj.jdbc.MysqlDataSource: int getPort()>() 
(assert true)
(define-const var3890 String (append/-1001720160 var1447 var1372)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1447!1 String)
(assert (str.prefixof var1447 var1447!1))
(assert true)
(define-const var1661 String (toString/-2075883882 var3890)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1082918192 var1639 "port" var1661)) ; Statement: specialinvoke $r16.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>("port", $r20) 

(declare-const var1639!1 var2544)
(declare-const var1146 String)
(declare-const var1661!1 String)
(assert true)
;(assert (add/1685322367 var559!4 (cast-from-var2544-to-var366 var1639!1))) ; Statement: virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r16) 

(declare-const var559!5 var2388)
(declare-const var1639!2 var2544)
(define-const var3138 var2544 var2544-init) ; Statement: $r21 = new javax.naming.StringRefAddr 
(define-const var1611 Bool (explicitPort/-1947772990 var38)) ; Statement: $z0 = r3.<com.mysql.cj.jdbc.MysqlDataSource: boolean explicitPort> 
(define-const var3662 String (String_valueOf/-1973653463 var1611)) ; Statement: $r22 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z0) 
(assert true)
;(assert (<init>/1082918192 var3138 "explicitPort" var3662)) ; Statement: specialinvoke $r21.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>("explicitPort", $r22) 

(declare-const var3138!1 var2544)
(declare-const var3753 String)
(declare-const var3662!1 String)
(assert true)
;(assert (add/1685322367 var559!5 (cast-from-var2544-to-var366 var3138!1))) ; Statement: virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r21) 

(declare-const var559!6 var2388)
(declare-const var3138!2 var2544)
(define-const var2228 var2544 var2544-init) ; Statement: $r23 = new javax.naming.StringRefAddr 
(assert true)
(define-const var2230 String (getDatabaseName/-1233690064 var38)) ; Statement: $r24 = virtualinvoke r3.<com.mysql.cj.jdbc.MysqlDataSource: java.lang.String getDatabaseName()>() 
(assert true)
;(assert (<init>/1082918192 var2228 "databaseName" var2230)) ; Statement: specialinvoke $r23.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>("databaseName", $r24) 

(declare-const var2228!1 var2544)
(declare-const var1512 String)
(declare-const var2230!1 String)
(assert true)
;(assert (add/1685322367 var559!6 (cast-from-var2544-to-var366 var2228!1))) ; Statement: virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r23) 

(declare-const var559!7 var2388)
(declare-const var2228!2 var2544)
(define-const var2945 var2544 var2544-init) ; Statement: $r25 = new javax.naming.StringRefAddr 
(assert true)
(define-const var715 String (getUrl/-1295279051 var38)) ; Statement: $r26 = virtualinvoke r3.<com.mysql.cj.jdbc.MysqlDataSource: java.lang.String getUrl()>() 
(assert true)
;(assert (<init>/1082918192 var2945 "url" var715)) ; Statement: specialinvoke $r25.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>("url", $r26) 

(declare-const var2945!1 var2544)
(declare-const var2958 String)
(declare-const var715!1 String)
(assert true)
;(assert (add/1685322367 var559!7 (cast-from-var2544-to-var366 var2945!1))) ; Statement: virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r25) 

(declare-const var559!8 var2388)
(declare-const var2945!2 var2544)
(define-const var3373 var2544 var2544-init) ; Statement: $r27 = new javax.naming.StringRefAddr 
(define-const var3464 Bool (explicitUrl/-1947772990 var38)) ; Statement: $z1 = r3.<com.mysql.cj.jdbc.MysqlDataSource: boolean explicitUrl> 
(define-const var1181 String (String_valueOf/-1973653463 var3464)) ; Statement: $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z1) 
(assert true)
;(assert (<init>/1082918192 var3373 "explicitUrl" var1181)) ; Statement: specialinvoke $r27.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>("explicitUrl", $r28) 

(declare-const var3373!1 var2544)
(declare-const var1651 String)
(declare-const var1181!1 String)
(assert true)
;(assert (add/1685322367 var559!8 (cast-from-var2544-to-var366 var3373!1))) ; Statement: virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r27) 

(declare-const var559!9 var2388)
(declare-const var3373!2 var2544)
(define-const var3546 var2562 var2611-PROPERTY_KEY_TO_PROPERTY_DEFINITION) ; Statement: $r29 = <com.mysql.cj.conf.PropertyDefinitions: java.util.Map PROPERTY_KEY_TO_PROPERTY_DEFINITION> 
(define-const var1806 var2953 (var2562_keySet/-712633290 var3546)) ; Statement: $r30 = interfaceinvoke $r29.<java.util.Map: java.util.Set keySet()>() 
(define-const var2950 Iterator (var2953_iterator/1911472585 var1806)) ; Statement: r31 = interfaceinvoke $r30.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2360 Bool (Iterator_hasNext/-1669924200 var2950)) ; Statement: $z2 = interfaceinvoke r31.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return $r2 
(assert (= (ite var2360 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), var2388-init=([], javax.naming.Reference), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2166-to-var173=([com.mysql.cj.jdbc.MysqlDataSource], java.lang.Object), <init>/-1043736733=([javax.naming.Reference, java.lang.String, java.lang.String, java.lang.String], void), var2544-init=([], javax.naming.StringRefAddr), getKeyName/-200443258=([com.mysql.cj.conf.PropertyKey], java.lang.String), getUser/-1474577429=([com.mysql.cj.jdbc.MysqlDataSource], java.lang.String), <init>/1082918192=([javax.naming.StringRefAddr, java.lang.String, java.lang.String], void), add/1685322367=([javax.naming.Reference, javax.naming.RefAddr], void), cast-from-var2544-to-var366=([javax.naming.StringRefAddr], javax.naming.RefAddr), password/-1947772990=([com.mysql.cj.jdbc.MysqlDataSource], java.lang.String), getServerName/-1440862808=([com.mysql.cj.jdbc.MysqlDataSource], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPort/320255875=([com.mysql.cj.jdbc.MysqlDataSource], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), explicitPort/-1947772990=([com.mysql.cj.jdbc.MysqlDataSource], boolean), String_valueOf/-1973653463=([boolean], java.lang.String), getDatabaseName/-1233690064=([com.mysql.cj.jdbc.MysqlDataSource], java.lang.String), getUrl/-1295279051=([com.mysql.cj.jdbc.MysqlDataSource], java.lang.String), explicitUrl/-1947772990=([com.mysql.cj.jdbc.MysqlDataSource], boolean), var2562_keySet/-712633290=([java.util.Map], java.util.Set), var2953_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2166=com.mysql.cj.jdbc.MysqlDataSource, var38=r3, var490=com.mysql.cj.jdbc.MysqlDataSourceFactory, var3452=$r0, var3870=r1, var2388=javax.naming.Reference, var559=$r2, var173=java.lang.Object, var384=$r4, var914=$r5, var3016=null_type, var1161=null, var2544=javax.naming.StringRefAddr, var3721=$r6, var1675=com.mysql.cj.conf.PropertyKey, var532=$r7, var1887=$r9, var238=$r8, var366=javax.naming.RefAddr, var2779=$r10, var3715=$r11, var3487=$r13, var2844=$r12, var3451=$r14, var1677=$r15, var2471="serverName", var1639=$r16, var888=$r17, var1447=$r18, var1372=$i0, var3890=$r19, var1661=$r20, var1146="port", var3138=$r21, var1611=$z0, var3662=$r22, var3753="explicitPort", var2228=$r23, var2230=$r24, var1512="databaseName", var2945=$r25, var715=$r26, var2958="url", var3373=$r27, var3464=$z1, var1181=$r28, var1651="explicitUrl", var2562=java.util.Map, var2611=com.mysql.cj.conf.PropertyDefinitions, var3546=$r29, var2953=java.util.Set, var1806=$r30, var2950=r31, var2360=$z2}
; {com.mysql.cj.jdbc.MysqlDataSource=var2166, r3=var38, com.mysql.cj.jdbc.MysqlDataSourceFactory=var490, $r0=var3452, r1=var3870, javax.naming.Reference=var2388, $r2=var559, java.lang.Object=var173, $r4=var384, $r5=var914, null_type=var3016, null=var1161, javax.naming.StringRefAddr=var2544, $r6=var3721, com.mysql.cj.conf.PropertyKey=var1675, $r7=var532, $r9=var1887, $r8=var238, javax.naming.RefAddr=var366, $r10=var2779, $r11=var3715, $r13=var3487, $r12=var2844, $r14=var3451, $r15=var1677, "serverName"=var2471, $r16=var1639, $r17=var888, $r18=var1447, $i0=var1372, $r19=var3890, $r20=var1661, "port"=var1146, $r21=var3138, $z0=var1611, $r22=var3662, "explicitPort"=var3753, $r23=var2228, $r24=var2230, "databaseName"=var1512, $r25=var2945, $r26=var715, "url"=var2958, $r27=var3373, $z1=var3464, $r28=var1181, "explicitUrl"=var1651, java.util.Map=var2562, com.mysql.cj.conf.PropertyDefinitions=var2611, $r29=var3546, java.util.Set=var2953, $r30=var1806, r31=var2950, $z2=var2360}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(boolean)>;	<java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String valueOf(boolean)>": 2}
;stmts r3 := @this: com.mysql.cj.jdbc.MysqlDataSource;	$r0 = class "Lcom/mysql/cj/jdbc/MysqlDataSourceFactory;";	r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>();	$r2 = new javax.naming.Reference;	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	specialinvoke $r2.<javax.naming.Reference: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r5, r1, null);	$r6 = new javax.naming.StringRefAddr;	$r7 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey USER>;	$r9 = virtualinvoke $r7.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	$r8 = virtualinvoke r3.<com.mysql.cj.jdbc.MysqlDataSource: java.lang.String getUser()>();	specialinvoke $r6.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>($r9, $r8);	virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r6);	$r10 = new javax.naming.StringRefAddr;	$r11 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey PASSWORD>;	$r13 = virtualinvoke $r11.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	$r12 = r3.<com.mysql.cj.jdbc.MysqlDataSource: java.lang.String password>;	specialinvoke $r10.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>($r13, $r12);	virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r10);	$r14 = new javax.naming.StringRefAddr;	$r15 = virtualinvoke r3.<com.mysql.cj.jdbc.MysqlDataSource: java.lang.String getServerName()>();	specialinvoke $r14.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>("serverName", $r15);	virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r14);	$r16 = new javax.naming.StringRefAddr;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$i0 = virtualinvoke r3.<com.mysql.cj.jdbc.MysqlDataSource: int getPort()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>("port", $r20);	virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r16);	$r21 = new javax.naming.StringRefAddr;	$z0 = r3.<com.mysql.cj.jdbc.MysqlDataSource: boolean explicitPort>;	$r22 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z0);	specialinvoke $r21.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>("explicitPort", $r22);	virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r21);	$r23 = new javax.naming.StringRefAddr;	$r24 = virtualinvoke r3.<com.mysql.cj.jdbc.MysqlDataSource: java.lang.String getDatabaseName()>();	specialinvoke $r23.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>("databaseName", $r24);	virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r23);	$r25 = new javax.naming.StringRefAddr;	$r26 = virtualinvoke r3.<com.mysql.cj.jdbc.MysqlDataSource: java.lang.String getUrl()>();	specialinvoke $r25.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>("url", $r26);	virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r25);	$r27 = new javax.naming.StringRefAddr;	$z1 = r3.<com.mysql.cj.jdbc.MysqlDataSource: boolean explicitUrl>;	$r28 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z1);	specialinvoke $r27.<javax.naming.StringRefAddr: void <init>(java.lang.String,java.lang.String)>("explicitUrl", $r28);	virtualinvoke $r2.<javax.naming.Reference: void add(javax.naming.RefAddr)>($r27);	$r29 = <com.mysql.cj.conf.PropertyDefinitions: java.util.Map PROPERTY_KEY_TO_PROPERTY_DEFINITION>;	$r30 = interfaceinvoke $r29.<java.util.Map: java.util.Set keySet()>();	r31 = interfaceinvoke $r30.<java.util.Set: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r31.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return $r2;	return $r2
;block_num 3
RegisterCommand('booklist', function()
    exports['striano_fastmenu']:clearMenu()
    Wait(75)
    local keys = {} for k in pairs(Config.Books) do table.insert(keys, k) end -- SAME ORDER EVER!
	table.sort(keys)
	for i, bookName in ipairs(keys) do
		local label = "["..i.."] " .. bookName
		exports['striano_fastmenu']:addMenuItem(label, function()
			local lvl = LocalPlayer.state.adminLevel or 0 
			if lvl > 0 then -- OPEN THE BOOK ONLY IF YOU ARE AN ADMIN!
				TriggerEvent("books:open", bookName)
			end
		end, true)
	end
    exports['striano_fastmenu']:openMenu()
end)

Config = {}
Config.Books = {
	--[[
		✅ NUOVO: LIBRI TESTUALI (AUTO-PAGINAZIONE)
		Impostando mode = 'text' NON servono immagini delle pagine.
		Lo script crea automaticamente:
		- Cover (hard)
		- Pagine interne con numerazione
		- Backcover (hard)

		Markup supportato (semplice):
		- "# Titolo"  -> Titolo grande
		- "## Sottotitolo" -> Titolo medio
		- Riga vuota -> nuovo paragrafo
	]]

	['guida'] = {
        ['pages'] = {
            { pageName = "cover", type = 'normal', source = 'local' }, --Front Cover, era hard
            { pageName = "1", type = 'normal', source = 'local' }, --Inside Front Cover
            { pageName = "2", type = 'normal', source = 'local' }, --Page 2
            { pageName = "3", type = 'normal', source = 'local' }, --Page 2
            { pageName = "4", type = 'normal', source = 'local' }, --Page 3
            { pageName = "5", type = 'normal', source = 'local' }, --Page 3
            { pageName = "6", type = 'normal', source = 'local' }, --Inside Rear Cover
			{ pageName = "7", type = 'normal', source = 'local' },
			{ pageName = "8", type = 'normal', source = 'local' },
			{ pageName = "9", type = 'normal', source = 'local' },
			{ pageName = "10", type = 'normal', source = 'local' },
			{ pageName = "11", type = 'normal', source = 'local' },
			{ pageName = "12", type = 'normal', source = 'local' },
            { pageName = "backcover", type = 'normal', source = 'local' }, --Rear Cover
        },
        ['size'] = {
            ['width'] = 400, --page image width
            ['height'] = 600, --page image height
        },
    },
    ['lotta'] = {
        ['pages'] = {
            { pageName = "cover", type = 'normal', source = 'local' }, --Front Cover, era hard
            { pageName = "1", type = 'normal', source = 'local' }, --Inside Front Cover
            { pageName = "2", type = 'normal', source = 'local' }, --Page 2
            { pageName = "3", type = 'normal', source = 'local' }, --Page 2
            { pageName = "4", type = 'normal', source = 'local' }, --Page 3
            { pageName = "5", type = 'normal', source = 'local' }, --Page 3
            { pageName = "6", type = 'normal', source = 'local' }, --Inside Rear Cover
            { pageName = "backcover", type = 'normal', source = 'local' }, --Rear Cover
        },
        ['size'] = {
            ['width'] = 400, --page image width
            ['height'] = 600, --page image height
        },
    },
	
	['riva'] = {
	mode = 'text',
	title = 'Riva',
	author = 'Autore sconosciuto',
	text = [[
	Il mare mi ha sputato fuori.

	Ricordo solo l’acqua sopra la testa.
	Poi sabbia sotto le mani.

	Non ero solo.
	Altri corpi lungo la riva.
	Tutti respiravano.
	Tutti tremavano.

	Non ricordo come sono arrivato qui.
	Ricordo solo un’ombra sotto la superficie.

	<<PAGE>> 
	[ L'OMBREA ]

	Lo abbiamo visto al tramonto.

	Troppo grande per essere una balena.
	Troppo silenzioso per essere tempesta.

	Quando una barca ha provato ad allontanarsi,
	l’acqua si è sollevata.

	Non ho visto morsi.
	Non ho visto sangue.

	Solo legno spezzato
	e poi… buio.

	Mi sono svegliato di nuovo qui.

	Non so se sono stato salvato
	o respinto.

	<<PAGE>> 
	[ ETERIS ]
	
	Non abbiamo più fame.

	Il corpo chiede solo quella bevanda azzurra
	che distilliamo con erbe amare e pelli trattate.

	Senza di essa, qualcosa cambia.

	Le vene si scuriscono.
	La pelle si tende.

	Uno di noi ha smesso di berla.

	Non è morto.

	È diverso.

	E forse è questo che mi spaventa di più.
		]],
		size = { width = 400, height = 600 },
	},
	
	['cenere_nelle_vene'] = {
		mode = 'text',
		title = 'Cenere nelle Vene',
		author = 'Diario trovato sull’Isola Vulcanica',
		text = [[
	Li ho visti.

	Un uomo si è sollevato da terra
	come se l’aria fosse solida.

	Un altro ha camminato tra le fiamme
	senza bruciare.

	Li chiamano Sons of Decay.

	Ho provato a diminuire l’Eteris.

	All’inizio solo tremore.
	Poi sogni.

	Sogni di profondità immense.

	Mi sono svegliato con le vene scure.
	Per un momento ho sentito il corpo leggero.

	Poi ho bevuto.

	E tutto è tornato stabile.

	Forse troppo stabile.

	C’è chi dice che bisogna morire nel mare.
	C’è chi dice che bisogna sopravvivere abbastanza a lungo.

	Non so quale sia la verità.

	So solo che non voglio restare fragile.

	Se questo diario viene trovato
	e io non torno,

	forse avrò capito qualcosa.
		]],
		size = { width = 400, height = 600 },
	},
	
	['contro_la_bestia'] = {
		mode = 'text',
		title = 'Contro la Bestia',
		author = 'Ordine dei Custodi',
		text = [[
	Fratelli delle isole,

	non lasciatevi ingannare.

	La creatura nel mare non è un guardiano.
	È la causa della nostra rovina.

	Da quando è emersa:

	- Le acque si sono sollevate
	- Le terre sono scomparse
	- I nostri figli nascono diversi

	Non è misericordia quando una barca viene distrutta.

	È dominio.

	I Sons parlano di evoluzione.

	Noi parliamo di sopravvivenza.

	L’Eteris è la nostra ancora.

	La Decadenza è corruzione.

	Difendete le isole.
	Non cercate l’orizzonte.
		]],
		size = { width = 400, height = 600 },
	},
	
	['del_drago_antico'] = {
		mode = 'text',
		title = 'Del Drago che Non Era Ancora Mostro',
		author = 'Manoscritto antico',
		text = [[
	Prima della Sommersione
	i pescatori parlavano di una creatura rara.

	Un piccolo drago marino.

	Non attaccava.
	Seguiva le barche.

	Poi qualcosa cambiò.

	Liquidi azzurri vennero versati nelle correnti.
	Ceneri sottili si dispersero sull’acqua.

	La creatura ingerì ciò che non comprendeva.

	Le sue vene iniziarono a brillare.

	Non fu più vista per anni.

	Poi qualcosa di immenso
	prese il suo posto tra le onde.

	Chi aveva visto il piccolo drago
	giurò una cosa:

	“Nei suoi occhi c’era qualcosa di diverso.”
		]],
		size = { width = 400, height = 600 },
	},
	
	['le_parole_del_primo'] = {
		mode = 'text',
		title = 'Le Parole del Primo',
		author = 'Autore ignoto',
		text = [[
	Non temete la Decadenza.
	Temete l’immobilità.

	Il mare non si alza per distruggerci.
	Si alza perché il mondo si muove.

	Ho visto ciò che giace oltre il limite.

	Non è morte.
	È trasformazione.

	Se un giorno non dovessi tornare,
	non cercate un mostro.

	Cercate la volontà di restare.
		]],
		size = { width = 400, height = 600 },
	},
	
	['arena_delle_isole'] = {
		mode = 'text',
		title = 'L’Arena delle Isole',
		author = 'Cronaca di Kharun',
		text = [[
	All’inizio combattevamo per paura.

	Le creature scendevano dalle foreste.
	Le acque portavano cose che non avevano nome.

	Imparammo a usare il legno come lancia,
	la pietra come lama,
	le mani come ultima difesa.

	Ma poi accadde qualcosa di inatteso.

	Quando il mare si calmava
	e le isole restavano in silenzio,
	gli uomini continuavano a sfidarsi.

	Non per odio.

	Per capire fin dove potevano spingersi.

	Il combattimento non era solo necessità.
	Era misura.

	Chi resisteva di più.
	Chi cadeva e si rialzava.
	Chi imparava dal colpo ricevuto.

	Due isole si incontrarono sulla riva.

	Non c’erano mostri.
	Non c’era il Velario.

	Solo uomini con armi forgiate a mano.

	Decisero di combattere
	non per distruggersi,
	ma per dimostrare valore.

	Il vincitore tornava a casa con risorse.
	Il perdente con cicatrici e rispetto.
	
	Con il tempo l’arena prese forma.

	Un cerchio di legno.
	Fuochi ai lati.
	Eteris pronta per chi cadeva.

	Le isole iniziarono a organizzare tornei.

	Pelli rare.
	Minerali.
	Erbe preziose.

	Tutto poteva essere messo in palio.

	Non era guerra.
	Era prova.

	Nell’arena si combatte fino all’ultimo sangue.

	Ma non fino all’ultima vita.

	Chi cade viene riportato indietro.
	Chi resiste viene ricordato.

	Alcuni dicono che il mare osservi.
	Che il Velario senta ogni impatto.

	Forse il combattimento non è solo forza.

	Forse è un modo per dimostrare
	che siamo ancora vivi.

	E che non abbiamo paura di esserlo.
		]],
		size = { width = 400, height = 600 },
	},
	
	['vie_del_combattimento'] = {
		mode = 'text',
		title = 'Le Sei Vie del Combattimento',
		author = 'Talen, Viaggiatore tra le Isole',
		text = [[
	Ho camminato tra le isole.
	Ho visto uomini combattere per paura,
	per gloria,
	per sopravvivenza.

	Ma ogni terra combatte in modo diverso.

	Non è solo tecnica.
	È visione del mondo.

	Qui il combattimento è controllo.

	Armi semplici.
	Movimenti misurati.
	Nessun colpo sprecato.

	Si combatte in cerchio,
	con rispetto.
	Chi cade viene aiutato ad alzarsi.

	Per loro,
	vincere è mantenere equilibrio.

	Qui si combatte per dominare.

	Martelli pesanti.
	Lame roventi.
	Sangue e scintille.

	L’arena è un cratere.
	Il terreno brucia.
	Il pubblico urla.

	Per loro,
	vincere è imporsi.

	Nella foresta mutata
	non c’è arena.

	Si combatte tra gli alberi.
	Silenzio.
	Colpi improvvisi.

	Non cercano la folla.
	Cercano precisione.

	Per loro,
	vincere è non essere colpiti.

	Combattono tra rovine.

	Scudi improvvisati.
	Armi recuperate.

	I duelli sono lunghi.
	Logoranti.

	Per loro,
	vincere è restare in piedi.

	Qui si combatte vicino al mare.

	Piedi nell’acqua.
	Movimenti fluidi.

	Imitano le onde.
	Cadono e si rialzano.

	Per loro,
	vincere è adattarsi.

	Pochi parlano di questa terra.

	Chi torna racconta di duelli
	senza pubblico.

	Combattimenti lenti.
	Quasi rituali.

	Dicono che qui
	non si combatta per vincere.

	Si combatte per capire chi si è.

	Non esiste un solo modo di combattere.

	Così come non esiste un solo modo di sopravvivere.

	Forse è per questo che siamo ancora qui.
		]],
		size = { width = 400, height = 600 },
	},
	
	['le_tre_vie'] = {
		mode = 'text',
		title = 'Le Tre Vie delle Isole',
		author = 'Archivio dell’Arena',
		text = [[
	Non siamo tutti uguali.

	Alcuni costruiscono mura.
	Alcuni cercano l’orizzonte.
	Alcuni tengono accesi i fuochi.

	Credono che la stabilità sia salvezza.

	Difendono le terre abitabili.
	Proteggono i calderoni.
	Temono il mare.

	Per loro, il futuro è resistere.

	Non accettano i confini.

	Partono su barche fragili.
	Tornano con reliquie e ferite.

	Per loro, il futuro è oltre.

	Non cercano gloria.

	Distillano Eteris.
	Forgiano armi.
	Gestiscono l’arena.

	Senza di loro,
	nessuno sopravvive abbastanza a lungo
	da combattere.

	Le isole non sono divise dall’odio.

	Sono divise dalle scelte.
		]],
		size = { width = 400, height = 600 },
	},
	
	['perche_combattiamo'] = {
		mode = 'text',
		title = 'Perché Combattiamo',
		author = 'Maestro dell’Arena',
		text = [[
	Non combattiamo per gloria.

	Non combattiamo per odio.

	Combattiamo perché il mare non dorme.

	Le foreste mutano.
	Le acque portano ombre.
	Le notti non sono mai davvero silenziose.

	Se smettessimo di allenarci,
	le isole cadrebbero in pochi giorni.

	L’arena non è spettacolo.

	È preparazione.

	Ogni cicatrice è memoria.

	Ogni duello è lezione.

	Chi cade nell’arena
	impara a non cadere quando le creature arrivano.

	Chi rifiuta di combattere
	vive grazie a chi lo fa.

	Combattere ci ricorda una cosa:

	Siamo ancora qui.

	Il mondo non è finito.

	Finirà solo quando smetteremo di resistere.

	E noi non abbiamo ancora smesso.
		]],
		size = { width = 400, height = 600 },
	},
	
	['il_grande_cerchio'] = {
		mode = 'text',
		title = 'Il Grande Cerchio',
		author = 'Archivio dell’Arena Centrale',
		text = [[
	Quando le creature si ritirarono per una stagione,
	gli uomini non deposero le armi.

	Le affilarono.

	Non per guerra.
	Per prova.

	Fu costruita con legno recuperato,
	pietra delle rovine,
	e corde intrecciate.

	Un cerchio.
	Fuochi ai lati.
	Eteris pronta per chi cadeva.

	Non si combatteva per odio.
	Si combatteva per essere degni.
	
	Col tempo le isole inviarono campioni.

	Armi forgiate a mano.
	Scudi decorati.
	Ferite mai completamente guarite.

	Le risorse venivano messe in palio.
	Le faide nascevano.
	Le alleanze si stringevano.

	Il sangue diventò linguaggio comune.

	I Neutrali gestiscono il Cerchio.

	Raccolgono scommesse.
	Distribuiscono premi.
	Registrano nomi.

	Un campione non è solo forza.

	È simbolo.

	E quando il pubblico grida,
	persino il mare sembra ascoltare.

	Combattiamo perché il mondo ci mette alla prova.

	Ma nell’arena scegliamo noi quando farlo.
		]],
		size = { width = 400, height = 600 },
	},
	
	['il_codice_dei_sons'] = {
		mode = 'text',
		title = 'Il Codice dei Sons',
		author = 'Archivio del Grande Cerchio',
		text = [[
	Un Son può entrare nel Cerchio.

	Ma entra come uomo.

	Nel Cerchio non si vola.
	Non si evocano fiamme.
	Non si piega lo spazio.

	Chi usa il potere
	dimostra di non averne controllo.

	E il controllo
	è ciò che distingue un Son da una bestia.

	Quando il sigillo è attivo,
	la magia si spegne.

	Restano solo:

	- Respiro
	- Lama
	- Volontà

	Un Son sanguina come un uomo.
	Un uomo può abbattere un Son.

	Ed è questo che rende il combattimento degno.

	Non veneriamo i Sons.

	Li osserviamo.

	Se combattono con onore,
	sono esempio.

	Se abusano del dono,
	sono avvertimento.

	Nel Cerchio,
	non esistono mostri.

	Solo uomini che scelgono chi essere.
		]],
		size = { width = 400, height = 600 },
	},
	
	['il_grande_torneo_trimestrale'] = {
		mode = 'text',
		title = 'Il Grande Torneo delle Tre Lune',
		author = 'Cronache del Cerchio',
		text = [[
	Ogni tre lune le isole si fermano.

	Le navi attraccano nello stesso porto.
	Le bandiere vengono issate.
	I fuochi dell’Arena Centrale vengono accesi.

	È il tempo del Grande Torneo.

	I capi delle tre isole abitabili si riuniscono
	prima che il primo colpo venga sferrato.

	Non siedono su troni.

	Siedono attorno al Cerchio.

	Stabiliscono ciò che verrà messo in palio:

	- Terreni coltivabili
	- Miniere vulcaniche
	- Accesso ai porti
	- Rotte sicure
	- Scorte di Eteris
	- Prigionieri di guerra

	Nulla è troppo prezioso.
	Nulla è intoccabile.

	Il Torneo non è solo gloria.

	È decisione.

	Una disputa per un territorio
	può essere risolta nel Cerchio.

	Un debito non pagato
	può essere saldato con il sangue.

	Un’isola può perdere un avamposto.
	Un’altra può guadagnare lavoratori forzati.

	Gli sconfitti non vengono sempre uccisi.

	A volte vengono legati.
	A volte venduti.
	A volte riscattati.

	Il Cerchio decide.

	Ogni isola porta i suoi migliori.

	Uomini temprati dal mare.
	Sons che scelgono di combattere come uomini.
	Guerrieri che non cercano scuse.

	Il pubblico grida.
	Le scommesse volano.
	I mercanti si arricchiscono.

	Ma quando il silenzio cala
	e restano solo due figure nel Cerchio,

	non esistono fazioni.

	Esiste solo volontà.

	C’è chi giura che durante il Torneo
	il mare si agiti più del solito.

	Che un’ombra immensa si muova sotto il porto.

	Forse il Velario osserva.
	Forse giudica.

	O forse ricorda
	che anche prima della Sommersione
	gli uomini combattevano per decidere il proprio destino.

	Ogni tre lune il mondo non cambia per caso.

	Cambia perché qualcuno
	ha vinto nel Cerchio.
		]],
		size = { width = 400, height = 600 },
	},
	
	['il_torneo_della_tempesta'] = {
		mode = 'text',
		title = 'Il Torneo della Tempesta',
		author = 'Cronache Spezzate',
		text = [[
	Non tutte le Tre Lune portano gloria.

	Ce n’è stata una
	che ancora oggi non viene nominata ad alta voce.

	Le tre isole si erano riunite.

	Il terreno in palio era fertile.
	Una miniera nuova era stata scoperta.
	Decine di prigionieri attendevano il verdetto.

	Il pubblico era il doppio del solito.
	Le scommesse mai così alte.

	I campioni entrarono nel Cerchio
	con la certezza di essere ricordati.

	Lo furono.

	Il duello finale durò più del previsto.

	Uno dei campioni era un Son.

	Non usò magia.
	Non spezzò le regole.

	Ma quando cadde,
	il silenzio fu innaturale.

	Non si rialzò.

	Per la prima volta,
	un Son moriva nel Cerchio.

	Quella notte il vento cambiò.

	Il porto si oscurò.
	Le torce si spensero una dopo l’altra.

	Le acque iniziarono a salire.

	Non come una tempesta.
	Come una risposta.

	Alcuni giurano di aver visto un’ombra immensa
	muoversi sotto le imbarcazioni.

	Le creature attaccarono prima dell’alba.

	Non dalla foresta.

	Dal mare.

	Il porto bruciò.
	Le barche furono spezzate.
	Decine di uomini scomparvero tra le onde.

	Il Torneo fu sospeso.

	Per la prima volta,
	le isole combatterono fianco a fianco
	non per vincere,
	ma per sopravvivere.

	Da quel giorno
	ogni Tre Lune viene celebrata con cautela.

	Le regole sono più rigide.
	Gli Arbitri più severi.
	Le scommesse più controllate.

	E quando un Son entra nel Cerchio,
	qualcuno guarda sempre verso il mare.

	Non per paura del combattente.

	Ma per paura di ciò che potrebbe ascoltare.
		]],
		size = { width = 400, height = 600 },
	},
	
	['i_figli_della_terra'] = {
		mode = 'text',
		title = 'I Figli della Terra',
		author = 'Scuderia dell’Isola Madre',
		text = [[
	Quando il mondo si è riempito d’acqua,
	abbiamo perso molto.

	Ma non tutto.

	I cavalli rimasero.

	Un cavallo non è trasporto.

	È compagno.

	Porta viveri tra gli avamposti.
	Trasporta feriti dopo un assalto.
	Sostiene il guerriero nell’arena.

	Chi ne possiede uno
	porta una responsabilità.

	Non vengono lasciati incustoditi.

	Le scuderie sono protette.
	I mangimi vengono coltivati con priorità.
	Le ferite vengono curate prima di molte altre.

	Un’isola che maltratta i suoi cavalli
	non dura a lungo.

	Nei Tornei delle Tre Lune,
	i campioni arrivano a cavallo.

	Non per spettacolo.

	Per ricordare che prima di combattere
	hanno percorso strade,
	affrontato creature,
	protetto carovane.
	Un cavallo non si compra con oro.
	Si merita.
	Finché i cavalli corrono tra le isole,
	significa che non siamo ancora caduti.
		]],
		size = { width = 400, height = 600 },
	},
	
	['l_ordine_del_nuovo_mondo'] = {
		mode = 'text',
		title = 'L’Ordine del Nuovo Mondo',
		author = 'Consiglio dei Fondatori',
		text = [[
	Dopo l’innalzamento delle acque non rimase che frammenti di terra e uomini smarriti sulle rive di isole sconosciute e fu necessario scegliere se lasciarsi consumare dalla paura oppure dare forma a un nuovo inizio e così i primi fondatori si riunirono non come re ma come sopravvissuti e decisero che il mondo non sarebbe stato ricordato per la sua fine ma per la sua riorganizzazione.
	Stabilirono che ogni isola abitabile avrebbe avuto un porto protetto un calderone per la distillazione dell’Eteris un’arena per l’addestramento e uno spazio coltivabile che nessuno avrebbe potuto bruciare senza consenso perché la sopravvivenza precede l’orgoglio e il conflitto senza misura porta solo alla rovina e fu scritto che chi difende l’isola difende tutti mentre chi la mette in pericolo risponde davanti al Cerchio.
	Non tutti gli uomini avevano la stessa visione e così si divisero non per odio ma per inclinazione alcuni scelsero di proteggere e divennero Custodi dell’Ancora altri scelsero di esplorare e divennero Cercatori dell’Orizzonte altri ancora decisero di mantenere vivi i fuochi forgiare armi allevare cavalli distillare Eteris organizzare tornei e divennero il cuore neutrale delle isole senza il quale nessuna fazione avrebbe potuto durare più di una stagione.
	Fu stabilito che le contese tra le isole non si sarebbero risolte con guerre infinite ma nel Cerchio dell’Arena dove campioni scelti avrebbero combattuto per territori per miniere per rotte sicure per scorte di Eteris e talvolta per la libertà dei prigionieri e fu stabilito che le regole del Cerchio sarebbero state custodite da Arbitri neutrali affinché il combattimento restasse misura e non caos.
	Fu anche scritto che il mare non sarebbe stato ignorato né sfidato senza preparazione perché l’orizzonte non appartiene agli uomini e le spedizioni sarebbero state autorizzate solo quando le scorte fossero adeguate le barche curate e i cavalli nutriti e nessuno avrebbe messo a rischio un’intera isola per ambizione personale poiché il nuovo mondo non perdona l’imprudenza.
	Così nacque l’Ordine del Nuovo Mondo non fondato su ricchezze antiche né su leggi dimenticate ma su equilibrio addestramento cooperazione e rispetto per ciò che non comprendiamo completamente e fu inciso che finché gli uomini sapranno combattere costruire allevare e distillare finché sapranno riunirsi ogni tre lune nel Cerchio e accettare l’esito della prova allora le isole resisteranno e il mondo non sarà finito ma trasformato.
	Questo è ciò che fu deciso quando le acque salirono e questo è ciò che ancora oggi sostiene le isole.
		]],
		size = { width = 400, height = 600 },
	},
	
	['il_trattato_segreto'] = {
		mode = 'text',
		title = 'Il Trattato Non Inciso',
		author = 'Sigillo dei Fondatori',
		text = [[
	Questo documento non fu mai letto nel Cerchio né inciso sulle tavole pubbliche poiché alcune verità non rafforzano l’ordine ma lo destabilizzano e ciò che mantiene unite le isole non è la conoscenza totale bensì l’equilibrio tra ciò che si sa e ciò che si teme.
	Fu osservato che la creatura non distrugge senza motivo né consuma ciò che potrebbe annientare facilmente e fu annotato che le barche ribaltate non presentano segni di morsi profondi ma urti controllati come se una forza immensa misurasse il proprio impatto e si decise che tale osservazione non dovesse essere divulgata affinché il timore rimanesse deterrente.
	Fu registrato che oltre una certa distanza le correnti cambiano natura e le acque assumono una densità che non appartiene al mare conosciuto e che spedizioni spinte oltre il limite non lasciarono relitti né corpi né segnali di ritorno e fu stabilito che nessuna isola avrebbe tentato esplorazioni estreme senza consenso unanime dei fondatori.
	Fu discusso che coloro chiamati Sons non sono da considerarsi né salvatori né minaccia assoluta poiché la loro esistenza sembra correlata a fenomeni che precedono ogni decisione umana e si stabilì che i Sons avrebbero potuto partecipare alla vita delle isole ma mai governarle senza controllo collettivo affinché nessun individuo potesse trascinare tutti verso scelte irreversibili.
	Fu riconosciuto che un popolo senza minaccia si divide più facilmente di un popolo unito contro un pericolo comune e che l’Ombra nel Mare avrebbe continuato a essere nominata come avvertimento e come limite affinché le isole non si dissolvessero in guerre premature o in esplorazioni sconsiderate.
	Se un giorno la creatura dovesse cadere o scomparire senza che le acque si ritirino allora si dovrà comprendere che essa non era la causa ma la conseguenza e che l’equilibrio del mondo non è garantito dall’assenza del mostro ma dalla sua presenza controllata e tale evenienza dovrà essere affrontata come fine di un’era e non come vittoria.

	Questo trattato non fu firmato con nomi ma con sigilli  
	e venne custodito lontano dagli occhi del popolo  
	poiché alcune decisioni gravano più del mare stesso.
		]],
		size = { width = 400, height = 600 },
	},
	
	['la_sobrieta_delle_isole'] = {
		mode = 'text',
		title = 'La Sobrietà delle Isole',
		author = 'Consiglio delle Tre Terre',
		text = [[
	Il vecchio mondo amava l’eccesso amava torri alte più del necessario amava ricchezze accumulate senza misura amava oggetti creati per essere mostrati e non per essere usati e quando le acque salirono non portarono via solo le città ma anche quell’illusione di abbondanza che aveva reso l’uomo cieco alla propria fragilità.
	Non furono solo le case a cadere ma l’idea che l’uomo fosse intoccabile non fu solo il metallo a sprofondare ma la convinzione che la crescita fosse infinita e quando restarono soltanto isole e legno e pietra e mani callose allora si comprese che il mondo non era finito ma era stato ridotto all’essenziale.
	Nel nuovo mondo non si costruisce per impressionare ma per resistere non si forgia per brillare ma per durare non si alleva per lusso ma per sopravvivere e chi accumula oltre il necessario viene guardato con sospetto perché l’eccesso precede sempre la rovina.
	Coloro chiamati Sons of Decay non sopravvissero per superiorità ma per accettazione compresero che la Decadenza non era punizione ma trasformazione compresero che trattenere tutto equivaleva a perdere tutto e scelsero di adattarsi invece di dominare-
	Non si elevarono sopra gli altri ma si alleggerirono.
	La gratificazione del nuovo mondo non è oro non è spettacolo non è possesso è resistenza è cooperazione è disciplina è la capacità di combattere quando serve e fermarsi quando non serve è la cura di un cavallo la manutenzione di una barca la condivisione dell’Eteris prima di bere per sé.
	Se un giorno le isole torneranno a desiderare torri inutili e potere senza misura allora le acque non avranno bisogno di salire di nuovo perché la rovina nasce prima nell’uomo e solo dopo nel mare.
	Finché resteremo sobri finché accetteremo il limite finché il Cerchio sarà misura e non spettacolo allora il nuovo mondo continuerà a esistere non come eredità del passato ma come scelta consapevole di restare.
		]],
		size = { width = 400, height = 600 },
	},
	
	['il_mercante_delle_torri'] = {
		mode = 'text',
		title = 'Il Mercante delle Torri',
		author = 'Cronache dell’Isola Spezzata',
		text = [[
	Arrivò con casse piene di metallo lucidato e stoffe colorate che nessuno aveva più visto da anni e parlava del ritorno della grandezza come se le acque fossero state un semplice errore e non una lezione.
	Disse che le isole meritavano di brillare disse che il nuovo mondo non doveva essere povero ma ambizioso e iniziò a costruire una torre più alta delle altre case usando materiali rari che avrebbero potuto rinforzare tre porti o riparare dieci barche.
	Alcuni lo seguirono attratti dalla novità.
	La torre rifletteva il sole e si vedeva dal mare aperto e per giorni non accadde nulla ma una notte le acque cambiarono e creature mai viste prima si avvicinarono alla costa attirate da qualcosa che brillava troppo in un mondo che aveva scelto l’essenziale.
	La torre non resistette alla tempesta e crollò trascinando con sé magazzini e scorte e il Mercante fu allontanato non con violenza ma con silenzio poiché il nuovo mondo non punisce l’ambizione ma non la sostiene quando diventa eccesso.
	Da allora nessuna costruzione supera ciò che serve.
		]],
		size = { width = 400, height = 600 },
	},
	
	['il_codice_delle_costruzioni'] = {
		mode = 'text',
		title = 'Il Codice delle Costruzioni',
		author = 'Consiglio delle Tre Terre',
		text = [[
	Fu stabilito che nessuna struttura sarebbe stata eretta per vanità e che ogni materiale avrebbe avuto funzione prima di forma e che l’altezza di una costruzione non avrebbe mai superato la necessità della sua utilità.
	Il legno raro è destinato a barche e ponti prima che a decorazioni il metallo forgiato serve a difesa e strumenti prima che a simboli e le scorte di pietra vulcanica non devono essere sprecate per mura inutilmente imponenti.
	Ogni porto deve restare visibile ma non provocatorio ogni arena deve essere solida ma non monumentale ogni casa deve proteggere ma non ostentare poiché ciò che si eleva senza necessità diventa segnale per ciò che osserva dal mare.
	Costruire significa resistere non dominare e un’isola che dimentica questo principio non perde solo risorse ma equilibrio e quando l’equilibrio si rompe non è la tempesta a punire ma la scelta stessa di aver ignorato il limite.
		]],
		size = { width = 400, height = 600 },
	},
	
	['delle_citta_perdute'] = {
		mode = 'text',
		title = 'Delle Città Perdute',
		author = 'Testimonianza Recuperata',
		text = [[
	Le città del vecchio mondo erano alte e luminose e non conoscevano silenzio e gli uomini camminavano tra torri di vetro e acciaio convinti che nulla potesse toccarli perché avevano piegato il mare scavato la terra e illuminato la notte.
	Vi era cibo in eccesso acqua addomesticata macchine che correvano senza cavalli e case costruite per mostrare potere più che per offrire rifugio e si parlava di progresso come se fosse eterno e di crescita come se non avesse limite.
	Ma quando il mare iniziò a salire non fu ascoltato quando le tempeste divennero più frequenti furono chiamate coincidenze e quando la terra tremò sotto il peso delle ambizioni nessuno volle rinunciare a ciò che aveva accumulato.
	Ora le città giacciono sotto le onde e le torri che un tempo toccavano il cielo sono diventate rifugi per creature che non conoscono il nome di chi le costruì e chi legge queste parole deve comprendere che non fu la forza del mare a distruggere il mondo ma l’incapacità dell’uomo di fermarsi.
	Il nuovo mondo sopravvive perché ha scelto il limite.
		]],
		size = { width = 400, height = 600 },
	},
	
	['le_creature_oltre_il_limite'] = {
		mode = 'text',
		title = 'Oltre il Limite',
		author = 'Registro di una Spedizione Perduta',
		text = [[
	Non scrivo questo per gloria ma per avvertimento perché ciò che abbiamo visto oltre la linea delle correnti non appartiene al mare che conosciamo e non risponde alle leggi delle isole.
	Superato un certo punto l’acqua cambia densità e il vento smette di spingere come se l’aria stessa esitasse e per un tratto non accade nulla e questo è l’inganno peggiore perché il silenzio prepara l’apparizione.
	Non sono pesci non sono balene non sono ombre comuni ma masse che si muovono come se l’oceano fosse carne viva e alcune si avvicinano alle imbarcazioni senza toccarle come se studiassero chi osa oltrepassare.
	Una di esse inghiottì una nave intera senza lasciare detriti.
	Quando la creatura più grande si mosse sotto di noi l’acqua tremò e le altre si ritirarono come se riconoscessero un dominio che non osano sfidare e allora comprendemmo che esiste qualcosa che tiene queste presenze lontane dalle isole.
	Chi legge comprenda che non tutto ciò che è temuto è il pericolo maggiore e che talvolta ciò che appare come minaccia è l’unica cosa che impedisce al vero abisso di raggiungerci.
		]],
		size = { width = 400, height = 600 },
	},
	
	['frammenti_dell_isola_interdetta'] = {
		mode = 'text',
		title = 'Frammenti dell’Isola Interdetta',
		author = 'Autore Sconosciuto',
		text = [[
	L’isola non è mappata ufficialmente e nessun fondatore la rivendica eppure esiste tra le correnti come un pensiero che non vuole essere pronunciato.
	Vi sono resti di strutture che non appartengono allo stile sobrio delle altre terre e incisioni che parlano di trasformazione e di soglia e di un uomo che osservava il mare non come nemico ma come risposta.
	In una cavità rocciosa vi è un calderone fuso nella pietra come se fosse stato parte della terra stessa e attorno ad esso tracce di cenere solidificata e residui di Eteris concentrata in quantità che nessuna isola produrrebbe oggi.
	Nessuno sa a cosa si riferisse ma chi rimane troppo a lungo sull’isola riferisce sogni di acqua e battiti lenti come un cuore sommerso.
	I fondatori decisero di non reclamare quell’isola non per mancanza di valore ma per eccesso di significato poiché alcune terre non vanno conquistate ma comprese e non sempre la comprensione è immediata
		]],
		size = { width = 400, height = 600 },
	},
	
	['il_rito_della_soglia'] = {
		mode = 'text',
		title = 'Il Rito della Soglia',
		author = 'Tradizione Orale Trascritta',
		text = [[
	Non esiste formula certa per diventare ciò che alcuni chiamano Son ma esiste un momento che molti riconoscono come soglia e quel momento non viene imposto ma attraversato.
	Colui che si sente vicino alla soglia digiuna non di cibo ma di eccesso riduce l’Eteris senza abbandonarla osserva il mare senza sfidarlo combatte senza odio e offre parte delle proprie scorte a chi ne ha bisogno, non per dimostrare forza ma per alleggerirsi.
	Talvolta il rito avviene lontano dall’arena in un cerchio tracciato sulla sabbia con cenere e acqua marina e l’individuo rimane in silenzio fino a quando il battito del proprio cuore sembra confondersi con quello delle onde e non sempre accade qualcosa.
	Alcuni riferiscono di una sensazione di risonanza altri di sogni profondi altri ancora di nulla eppure in certe rare occasioni l’individuo ritorna diverso non nel corpo soltanto ma nello sguardo come se avesse accettato una parte del mondo che prima respingeva.
	Non è potere ciò che si cerca ma accordo e chi attraversa la soglia senza equilibrio non diventa elevato ma instabile perché la Decadenza non premia l’ambizione ma l’accettazione.
		]],
		size = { width = 400, height = 600 },
	},
}

-- EXPORTS TO GET BOOK NAME FROM ID
local CachedBookList = {}
local CachedBookIndex = {}

local function BuildBookList()
    CachedBookList = {}
    CachedBookIndex = {}

    for bookName in pairs(Config.Books) do
        CachedBookList[#CachedBookList + 1] = bookName
    end

    table.sort(CachedBookList) -- ordine fisso 🔥

    -- crea anche la mappa inversa
    for i = 1, #CachedBookList do
        local name = CachedBookList[i]
        CachedBookIndex[name] = i
    end
end

CreateThread(function()
    BuildBookList()
end)

-- 👉 INDEX → NOME
function GetBookName(index)
	if CachedBookList[index] == nil then return CachedBookList[1] end
    return CachedBookList[index]
end

-- 👉 NOME → INDEX
function GetBookIndex(name)
	if CachedBookIndex[index] == nil then return CachedBookIndex[1] end
    return CachedBookIndex[name]
end

exports('getBookName', GetBookName) -- getBookName(ID)
exports('getBookIndex', GetBookIndex) -- getBookName("Book_Name")
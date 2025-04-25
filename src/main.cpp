OBSE_PLUGIN_LOAD(const OBSE::LoadInterface* a_obse)
{
	OBSE::Init(a_obse);

	REX::INFO("Hello World!");

	return true;
}

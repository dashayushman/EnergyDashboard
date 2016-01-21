package com.company.energy.dal;

public class EnergyDao {
	public static final Logger logger = LoggerFactory
			.getLogger(LocalizationDao.class);

	@PersistenceContext
	protected EntityManager em;
	@Autowired
	private DataSource dataSource;

}

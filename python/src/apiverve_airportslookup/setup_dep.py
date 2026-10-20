from setuptools import setup, find_packages

setup(
    name='apiverve_airportslookup',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Airports Lookup resolves 3-letter IATA codes into official airport names, matching ICAO codes, cities, states, and country codes. Paid plans add ICAO code lookups, geographic coordinates, elevation, and local timezones across more than 40,000 facilities.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/airports?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
